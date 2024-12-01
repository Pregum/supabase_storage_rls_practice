import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/bucket_kind.dart';
import 'package:supabase_storage_rls_practice/ui/widgets/simple_dropdown.dart';

class BucketInfoPanel extends HookConsumerWidget {
  const BucketInfoPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bucketKind = useState<BucketKind>(BucketKind.a);
    final bucketInfo = useFuture(
      useMemoized(
        () async {
          logger.d('bucketKind.value.name --> ${bucketKind.value.name}');
          try {
            final bucketInfo = await ref
                .read(supabaseServiceProvider)
                .storage
                .getBucket(bucketKind.value.name);
            final data = {
              'id': bucketInfo.id,
              'fileSizeLimit': bucketInfo.fileSizeLimit,
              'allowedMimeTypes': bucketInfo.allowedMimeTypes,
              'name': bucketInfo.name,
              'owner': bucketInfo.owner,
              'createdAt': bucketInfo.createdAt,
              'public': bucketInfo.public,
            }.entries.map((e) => '${e.key}: ${e.value}').join(',\n');
            return '{$data}';
          } catch (e) {
            logger.e('error: $e');
          }
        },
        [bucketKind.value],
      ),
    );
    return Form(
      child: Column(
        children: [
          const Gap(24),
          const Text('bucketを選択してください'),
          SimpleDropdown(
            defaultValue: bucketKind.value,
            items: BucketKind.values,
            onChanged: (value) {
              bucketKind.value = value;
            },
          ),
          const Text('バケット情報'),
          Text(bucketInfo.data?.toString() ?? ''),
          const Gap(24),
        ],
      ),
    );
  }
}
