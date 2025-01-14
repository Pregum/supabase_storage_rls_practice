import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:badges/badges.dart' as badges;
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/service/command_log_stream_service.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';
import 'package:supabase_storage_rls_practice/ui/pages/bucket_info/bucket_info_panel.dart';
import 'package:supabase_storage_rls_practice/ui/pages/log_list/log_list_panel.dart';
import 'package:supabase_storage_rls_practice/ui/pages/log_list/view_model/log_list_view_model.dart';
import 'package:supabase_storage_rls_practice/ui/pages/play_ground/play_ground_panel.dart';

@RoutePage()
class PlayGroundPage extends HookConsumerWidget {
  const PlayGroundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerProvider = useSingleTickerProvider();
    final tabController =
        useTabController(initialLength: 3, vsync: tickerProvider);

    // ここでwatchして初期化を行わせる
    final logs = ref.watch(logListViewModelProvider);

    ref.listen(commandLogStreamServiceProvider, (prev, next) {
      logger.d('receive: $next');
      switch (next) {
        case (AsyncValue<CommandResult> s)
            when s.value != null && !s.isLoading && !s.hasError && s.hasValue:
          ref.read(logListViewModelProvider.notifier).addLog(s.value!);
          break;
        case (AsyncValue<CommandResult> s) when !s.isLoading && s.hasError:
          logger.e('error: ${s.error}');
          ref.read(logListViewModelProvider.notifier).addLog(
                CommandResult.failure(
                  command: next.value?.command ?? '',
                  message: s.error.toString(),
                ),
              );
          break;
        default:
          break;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayGround'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.push(const SettingRoute());
            },
          ),
        ],
      ),
      body: SelectionArea(
        child: Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: [
                const Tab(
                  text: 'playground',
                ),
                Tab(
                  child: badges.Badge(
                    badgeContent: Text(
                      '${logs.length}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    showBadge: logs.isNotEmpty,
                    child: const Text('ログ'),
                  ),
                ),
                const Tab(
                  text: 'バケットの状態',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  PlayGroundPanel(
                    key: PageStorageKey(0),
                  ),
                  LogListPanel(
                    key: PageStorageKey(1),
                  ),
                  BucketInfoPanel(
                    key: PageStorageKey(2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
