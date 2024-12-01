import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/command_log_stream_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';

class LogListPanel extends HookConsumerWidget {
  const LogListPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TabBarを切り替えた時に画面の更新が走る為、画面情報を保持するために配置
    useAutomaticKeepAlive();

    final logs = useState<List<CommandResult>>([]);

    ref.listen(commandLogStreamServiceProvider, (prev, next) {
      logger.d('receive: $next');
      switch (next) {
        case (AsyncValue<CommandResult> s)
            when s.value != null && !s.isLoading && !s.hasError:
          logs.value = [...logs.value, s.value!];
          break;
        case (AsyncValue<CommandResult> s) when s.hasError:
          logger.e('error: ${s.error}');
          logs.value = [
            ...logs.value,
            CommandResult.failure(
              command: next.value?.command ?? '',
              message: s.error.toString(),
            ),
          ];
          break;
        default:
          break;
      }
    });

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(8),
            const Text('ログ'),
            for (var log in logs.value)
              SizedBox(
                height: 340,
                child: Card(
                    color: log.resultType == ResultType.success
                        ? Colors.green[100]
                        : Colors.red[100],
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Center(
                              child: Text('command: ${log.command}'),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            top: 8,
                            child: Icon(
                              log.resultType == ResultType.success
                                  ? Icons.check_circle
                                  : Icons.error,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
