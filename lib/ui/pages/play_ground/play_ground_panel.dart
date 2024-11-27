import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/domain/model/operation_type.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/usecase/upload_use_case.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/default_parameter_area.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/upload_options_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/view_model/play_ground_view_model.dart';

class PlayGroundPanel extends HookConsumerWidget {
  const PlayGroundPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operationType = useState<OperationType>(OperationType.upload);
    useEffect(() {
      Future(() {
        // TODO: 後でfactoryに変更する
        final param = switch (operationType.value) {
          OperationType.upload => const UploadCommandParameter(
              sourceFilePath: '',
              destFilePath: '',
            ),
          OperationType.update => const UpdateCommandParameter(
              sourceFilePath: '',
              destFilePath: '',
            ),
          _ => const UpdateCommandParameter(
              sourceFilePath: '',
              destFilePath: '',
            ),
        };
        ref.read(playGroundViewModelProvider.notifier).update(param);
      });

      return () {};
    }, [operationType.value]);

    // TabBarを切り替えた時に画面の更新が走る為、画面情報を保持するために配置
    useAutomaticKeepAlive();

    final parameter = ref.watch(playGroundViewModelProvider);

    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Gap(8),
              const Text('操作の種類'),
              DropdownButton(
                value: operationType.value,
                items: [
                  for (final operationType in OperationType.values)
                    DropdownMenuItem(
                      value: operationType,
                      child: Text(operationType.name),
                    ),
                ],
                onChanged: (newValue) {
                  if (newValue == null) {
                    return;
                  }
                  operationType.value = newValue;
                },
              ),
              switch (parameter) {
                UploadCommandParameter() => UploadOptionsForm(
                    parameter: parameter,
                  ),
                _ => const DefaultParameterArea(),
              },
              FilledButton(
                  child: const Text('実行'),
                  onPressed: () async {
                    switch (parameter) {
                      // ダブルディスパッチで汎用的に実装するか迷ったが
                      // 拡張性はそこまで優先度が高くないと判断し、switchで愚直に実装する
                      case UploadCommandParameter():
                        try {
                          await ref
                              .read(uploadUseCaseProvider)
                              .execute(parameter);
                        } catch (e) {
                          logger.e(e);
                        }
                        break;
                      default:
                        break;
                    }
                  }),
              const Gap(64),
            ],
          ),
        ),
      ),
    );
  }
}
