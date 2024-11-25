import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/operation_type.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/domain/model/upload_command_parameter.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/default_parameter_area.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/upload_parameter_area.dart';

class PlayGroundPanel extends HookConsumerWidget {
  const PlayGroundPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operationType = useState<OperationType>(OperationType.upload);
    final parameter = useMemoized<StorageCommandParameter>(
        () => switch (operationType.value) {
              OperationType.upload => UploadParameter(
                  sourceFilePath: '',
                  destFilePath: '',
                  bucketKind: BucketKind.a,
                  operationType: operationType.value,
                ),
              OperationType.update => UpdateParameter(
                  sourceFilePath: '',
                  destFilePath: '',
                  bucketKind: BucketKind.a,
                  operationType: operationType.value,
                ),
              //  OperationType.delete =>
              //    DeleteParameter(),
              _ => UpdateParameter(
                  sourceFilePath: '',
                  destFilePath: '',
                  bucketKind: BucketKind.a,
                  operationType: operationType.value,
                ),
            },
        [operationType.value]);

    // TabBarを切り替えた時に画面の更新が走る為、画面情報を保持するために配置
    useAutomaticKeepAlive();

    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  // parameter.value = parameter.value.copyWith(operationType: newValue);
                },
              ),
              switch (parameter) {
                UploadParameter() => UploadParameterArea(
                    parameter: parameter,
                  ),
                UpdateParameter() => const DefaultParameterArea(),
                _ => const DefaultParameterArea(),
              },
              FilledButton(child: const Text('実行'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
