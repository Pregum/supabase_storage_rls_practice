import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:path/path.dart' as path;

enum UploadDestinationPathType {
  defaultPath,
  customPath,
}

class SimpleRadioButton extends HookConsumerWidget {
  final String defaultValue;
  final String filePath;
  final Function(String)? onChanged;

  const SimpleRadioButton({
    super.key,
    required this.defaultValue,
    required this.filePath,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPathType = useState<UploadDestinationPathType>(
        UploadDestinationPathType.defaultPath);
    final destFilePathController = useTextEditingController();

    final value = useState(defaultValue);
    final user = ref.watch(
        supabaseServiceProvider.select((value) => value.auth.currentUser));
    final defaultPath = useMemoized(
      () {
        final joinedPath = path.join('${user?.id}', path.basename(filePath));
        return joinedPath;
      },
      [filePath, user],
    );

    useEffect(() {
      void onListener() {
        onChanged?.call(destFilePathController.text);
      }

      destFilePathController.addListener(onListener);

      return () {
        destFilePathController.removeListener(onListener);
      };
    }, []);

    return Column(children: [
      RadioListTile<UploadDestinationPathType>(
        value: UploadDestinationPathType.defaultPath,
        groupValue: selectedPathType.value,
        title: Text(
          'デフォルトパスを使用: \n(uid/file_name) → \n'
          '$defaultPath',
        ),
        onChanged: (value) {
          if (value != null) {
            selectedPathType.value = value;
            onChanged?.call(defaultPath);
          }
        },
      ),
      RadioListTile<UploadDestinationPathType>(
        value: UploadDestinationPathType.customPath,
        groupValue: selectedPathType.value,
        title: const Text('カスタムパスを使用'),
        onChanged: (newValue) {
          if (newValue != null) {
            selectedPathType.value = newValue;
            if (destFilePathController.text.isEmpty) {
              destFilePathController.text =
                  '${user?.id}/${path.basename(value.value)}';
            }
          }
        },
      ),
      if (selectedPathType.value == UploadDestinationPathType.customPath)
        TextField(
          controller: destFilePathController,
          maxLines: null,
          onChanged: (value) => destFilePathController.text = value,
          decoration: const InputDecoration(
            labelText: '保存先のファイルパス',
            hintText: '保存先のファイルパスを入力してください',
          ),
        ),
    ]);
  }
}
