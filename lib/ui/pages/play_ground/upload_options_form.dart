import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';

class UploadOptionsForm extends HookConsumerWidget {
  final UploadCommandParameter parameter;
  const UploadOptionsForm({super.key, required this.parameter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parameter = useState<UploadCommandParameter>(this.parameter);
    final sourceFilePathController = useTextEditingController();
    final destFilePathController = useTextEditingController();

    return Form(
      child: Column(
        children: [
          const Text('bucketを選択してください'),
          DropdownButton(
            value: parameter.value.bucketKind,
            items: [
              for (final bucketKind in BucketKind.values)
                DropdownMenuItem(
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
          TextField(
            controller: sourceFilePathController,
            onChanged: (value) {
              sourceFilePathController.text = value;
              parameter.value = parameter.value.copyWith(sourceFilePath: value);
            },
            decoration: const InputDecoration(
              labelText: '保存ソースのファイルパス',
              hintText: '保存ソースのファイルパスを入力してください',
            ),
          ),
          const Text('操作先のパス'),
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
