import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
// import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/domain/model/storage_command_parameter.dart';
import 'package:supabase_storage_rls_practice/gen/assets.gen.dart';
import 'package:path/path.dart' as path;
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/view_model/play_ground_view_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

enum UploadDestinationPathType {
  defaultPath,
  customPath,
}

class UploadOptionsForm extends HookConsumerWidget {
  final UploadCommandParameter parameter;
  const UploadOptionsForm({super.key, required this.parameter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parameter = useState<UploadCommandParameter>(this.parameter);
    final sourceFilePathController = useTextEditingController();
    final destFilePathController = useTextEditingController();
    final user = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));
    final selectedPathType = useState<UploadDestinationPathType>(
        UploadDestinationPathType.defaultPath);

    useEffect(() {
      // DropdownItemのvalueが空文字だとエラーになるのと、
      // そのまま実行した時に空文字になっているので、初期値を設定している
      final filePath = Assets.images.png.values.first.path;
      parameter.value = parameter.value.copyWith(
        sourceFilePath: filePath,
        destFilePath: '${user?.id}/${path.basename(filePath)}',
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
          const Gap(24),
          const Text('アップロードファイルを選択してください'),
          DropdownButton<String>(
            value: parameter.value.sourceFilePath,
            items: [
              for (final filePath in [
                ...Assets.images.png.values.map((e) => e.path),
                ...Assets.pdf.values,
              ])
                DropdownMenuItem<String>(
                  value: filePath,
                  child: Text(filePath),
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
          switch (path.extension(parameter.value.sourceFilePath)) {
            '.png' => Image.asset(
                parameter.value.sourceFilePath,
                fit: BoxFit.cover,
              ),
            '.pdf' => AspectRatio(
                aspectRatio: 3 / 4, // pdfの下半分見切れ防止にアスペクト比を指定している
                child: SfPdfViewer.asset(parameter.value.sourceFilePath),
              ),
            _ => Container(),
          },
          const Gap(24),
          const Text('送信先のパスを選択してください'),
          RadioListTile<UploadDestinationPathType>(
            value: UploadDestinationPathType.defaultPath,
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
          RadioListTile<UploadDestinationPathType>(
            value: UploadDestinationPathType.customPath,
            groupValue: selectedPathType.value,
            title: const Text('カスタムパスを使用'),
            onChanged: (value) {
              if (value != null) {
                selectedPathType.value = value;
                if (destFilePathController.text.isEmpty) {
                  destFilePathController.text =
                      '${user?.id}/${path.basename(parameter.value.sourceFilePath)}';
                }
                parameter.value = parameter.value.copyWith(
                  destFilePath: destFilePathController.text,
                );
              }
            },
          ),
          if (selectedPathType.value == UploadDestinationPathType.customPath)
            TextField(
              controller: destFilePathController,
              maxLines: null,
              onChanged: (value) => sourceFilePathController.text = value,
              decoration: const InputDecoration(
                labelText: '保存先のファイルパス',
                hintText: '保存先のファイルパスを入力してください',
              ),
            ),
          CheckboxListTile(
            title: const Text('upsertを有効にする'),
            value: parameter.value.isUpsertEnabled,
            onChanged: (bool? value) {
              if (value != null) {
                parameter.value =
                    parameter.value.copyWith(isUpsertEnabled: value);
              }
            },
          ),
          const Gap(24),
        ],
      ),
    );
  }
}
