import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/gen/assets.gen.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/view_model/play_ground_view_model.dart';
import 'package:supabase_storage_rls_practice/ui/widgets/simple_dropdown.dart';
import 'package:supabase_storage_rls_practice/ui/widgets/simple_radio_button.dart';
import 'package:path/path.dart' as path;

class CreateSignedUrlsOptionForm extends HookConsumerWidget {
  const CreateSignedUrlsOptionForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parentParameter = ref.watch(playGroundViewModelProvider);
    final parameter = useState<CreateSignedUrlsCommandParameter>(
        parentParameter as CreateSignedUrlsCommandParameter);
    final user = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));
    final initialFilePath = useMemoized(() {
      final filePath = Assets.images.png.values.first.path;
      return '${user?.id}/${path.basename(filePath)}';
    });

    useEffect(() {
      // DropdownItemのvalueが空文字だとエラーになるのと、
      // そのまま実行した時に空文字になっているので、初期値を設定している
      parameter.value = parameter.value.copyWith(
        filePaths: [initialFilePath],
      );

      // パラメータの変更をviewModelに通知する
      // 最初はuseStateのみで考えていたが、
      // 親ウィジェットへ変更内容を伝搬するためにprovider(ViewModel)経由で通知する
      void onListener() {
        logger.d(
            'update from edit param to playGroundViewModel.state --> ${parameter.value}');
        ref.read(playGroundViewModelProvider.notifier).update(parameter.value);
      }

      parameter.addListener(onListener);
      return () {
        parameter.removeListener(onListener);
      };
    }, []);

    return Form(
      child: Column(
        children: [
          const Gap(24),
          const Text('bucketを選択してください'),
          SimpleDropdown(
            defaultValue: parameter.value.bucketKind,
            items: BucketKind.values,
            onChanged: (value) {
              parameter.value = parameter.value.copyWith(bucketKind: value);
            },
          ),
          const Gap(24),
          const Text('urlを作成するパスを入力してください'),
          for (final (index, filePath) in parameter.value.filePaths.indexed)
            Column(
              children: [
                const Gap(24),
                Text('${index + 1}個目のURLを入力してください'),
                SimpleRadioButton(
                  key: ValueKey(index + 1),
                  defaultValue: '',
                  filePath: filePath,
                  onChanged: (value) {
                    final paths = parameter.value.filePaths;
                    paths[index] = value;
                    parameter.value =
                        parameter.value.copyWith(filePaths: paths);
                  },
                ),
              ],
            ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (parameter.value.filePaths.length == 1) {
                    return;
                  }
                  final paths = parameter.value.filePaths;
                  final removedLastPaths =
                      paths.take(paths.length - 1).toList();
                  parameter.value =
                      parameter.value.copyWith(filePaths: removedLastPaths);
                },
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  final paths = parameter.value.filePaths;
                  final addedPaths = [...paths, initialFilePath];
                  parameter.value =
                      parameter.value.copyWith(filePaths: addedPaths);
                },
              ),
            ],
          ),
          const Gap(24),
        ],
      ),
    );
  }
}
