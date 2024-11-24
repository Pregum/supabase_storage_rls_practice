import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/operation_type.dart';

class PlayGroundPanel extends HookConsumerWidget {
  const PlayGroundPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bucketKind = useState<BucketKind>(BucketKind.a);
    final operationType = useState<OperationType>(OperationType.upload);
    final sourceFilePathController = useTextEditingController();
    final destFilePathController = useTextEditingController();

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
              const Text('bucketを選択してください'),
              DropdownButton(
                value: bucketKind.value,
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
                  bucketKind.value = newValue;
                },
              ),
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
              TextField(
                controller: sourceFilePathController,
                onChanged: (value) => sourceFilePathController.text = value,
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
              FilledButton(child: const Text('実行'), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
