import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/domain/model/operation_type.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/copy_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/create_signed_upload_url_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/create_signed_url_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/create_signed_urls_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/download_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/list_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/move_options_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/remove_option_form.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/update_options_form.dart';
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
          OperationType.upload => const UploadCommandParameter(),
          OperationType.update => const UpdateCommandParameter(),
          OperationType.move => const MoveCommandParameter(),
          OperationType.download => const DownloadCommandParameter(),
          OperationType.list => const ListCommandParameter(),
          OperationType.copy => const CopyCommandParameter(),
          OperationType.remove => const RemoveCommandParameter(),
          OperationType.createSignedUrl =>
            const CreateSignedUrlCommandParameter(),
          OperationType.createSignedUrls =>
            const CreateSignedUrlsCommandParameter(),
          _ => const UpdateCommandParameter(),
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
              const Divider(),
              switch (parameter) {
                UploadCommandParameter() => const UploadOptionsForm(),
                UpdateCommandParameter() => const UpdateOptionsForm(),
                MoveCommandParameter() => const MoveOptionsForm(),
                DownloadCommandParameter() => const DownloadOptionForm(),
                ListCommandParameter() => const ListOptionForm(),
                CopyCommandParameter() => const CopyOptionForm(),
                RemoveCommandParameter() => const RemoveOptionForm(),
                CreateSignedUrlCommandParameter() =>
                  const CreateSignedUrlOptionForm(),
                CreateSignedUrlsCommandParameter() =>
                  const CreateSignedUrlsOptionForm(),
                CreateSignedUploadUrlCommandParameter() =>
                  const CreateSignedUploadUrlOptionForm(),
              },
              FilledButton(
                child: const Text('実行'),
                onPressed: () async {
                  final viewModel =
                      ref.read(playGroundViewModelProvider.notifier);
                  await viewModel.executeCommand();
                },
              ),
              const Gap(64),
            ],
          ),
        ),
      ),
    );
  }
}
