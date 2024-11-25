import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_auth_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
// import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/gen/assets.gen.dart';
import 'package:path/path.dart' as path;

class UploadOptionsForm extends HookConsumerWidget {
  final UploadCommandParameter parameter;
  const UploadOptionsForm({super.key, required this.parameter});

  final _defaultTypeOfDestinationPath = 'default';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parameter = useState<UploadCommandParameter>(this.parameter);
    final sourceFilePathController = useTextEditingController();
    final destFilePathController = useTextEditingController();
    final user = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));
    final selectedPathType = useState<String>(_defaultTypeOfDestinationPath);

    // logger.d(Assets.images.png.values.map((e) => e.path));

    useEffect(() {
      parameter.value = parameter.value
          .copyWith(sourceFilePath: Assets.images.png.values.first.path);
      return () {};
    }, []);

    return Form(
      child: Column(
        children: [
          const Gap(24),
          const Text('bucketを選択してください'),
          DropdownButton(
            value: parameter.value.bucketKind,
            items: [
              for (final bucketKind in BucketKind.values)
                DropdownMenuItem(
                  key: ValueKey('bucket-$bucketKind'),
                  value: bucketKind,
                  child: Text(bucketKind.name),
                ),
            ],
            onChanged: (newValue) {
              if (newValue == null) {
                return;
              }
              parameter.value = parameter.value.copyWith(bucketKind: newValue);
            },
          ),
          const Gap(24),
          const Text('アップロードファイルを選択してください'),
          DropdownButton<String>(
            value: parameter.value.sourceFilePath,
            items: [
              for (final fileType
                  in Assets.images.png.values.map((e) => e.path))
                DropdownMenuItem<String>(
                  value: fileType,
                  child: Text(fileType),
                ),
            ],
            onChanged: (newValue) {
              if (newValue == null) {
                return;
              }
              parameter.value =
                  parameter.value.copyWith(sourceFilePath: newValue);
            },
          ),
          if (parameter.value.sourceFilePath.isNotEmpty)
            Image.asset(
              parameter.value.sourceFilePath,
              fit: BoxFit.cover,
            ),
          const Gap(24),
          const Text('送信先のパスを選択してください'),
          RadioListTile<String>(
            value: _defaultTypeOfDestinationPath,
            groupValue: selectedPathType.value,
            title: Text(
              'デフォルトパスを使用: \n(uid/file_name) → \n'
              '(${user?.id}/${path.basename(parameter.value.sourceFilePath)})',
            ),
            onChanged: (value) {
              if (value != null) {
                selectedPathType.value = value;
                parameter.value = parameter.value.copyWith(
                  destFilePath:
                      '${user?.id}/${path.basename(parameter.value.sourceFilePath)}',
                );
              }
            },
          ),
          RadioListTile<String>(
            value: 'custom',
            groupValue: selectedPathType.value,
            title: const Text('カスタムパスを使用'),
            onChanged: (value) {
              if (value != null) {
                selectedPathType.value = value;
              }
            },
          ),
          if (selectedPathType.value == 'custom')
            TextField(
              controller: destFilePathController,
              onChanged: (value) => sourceFilePathController.text = value,
              decoration: const InputDecoration(
                labelText: '保存先のファイルパス',
                hintText: '保存先のファイルパスを入力してください',
              ),
            ),
          const Gap(24),
        ],
      ),
    );
  }
}
