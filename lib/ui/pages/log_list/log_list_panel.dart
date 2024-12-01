import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/data/service/command_log_stream_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';
import 'package:intl/intl.dart';
import 'package:supabase_storage_rls_practice/ui/pages/log_list/view_model/log_list_view_model.dart';

class LogListPanel extends HookConsumerWidget {
  const LogListPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TabBarを切り替えた時に画面の更新が走る為、画面情報を保持するために配置
    useAutomaticKeepAlive();
    
    final logs = ref.watch(logListViewModelProvider);

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
            for (var log in logs)
              SizedBox(
                height: 320,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('command'),
                                SyntaxView(
                                  code: log.command,
                                  syntax: Syntax.DART,
                                  syntaxTheme: SyntaxTheme.gravityDark(),
                                ),
                                const Text('message'),
                                Text(
                                  log.message,
                                ),
                                const Gap(8),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text(DateFormat('yyyy/MM/dd HH:mm:ss')
                              .format(log.createdAt)),
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
                  ),
                ),
              ),
            const Gap(32),
            ElevatedButton(
              child: const Text('ログをクリア'),
              onPressed: () {
                ref.read(logListViewModelProvider.notifier).clearLogs();
              },
            ),
            const Gap(64),
          ],
        ),
      ),
    );
  }
}
