import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';
import 'package:supabase_storage_rls_practice/ui/pages/login/login_page.dart';

@RoutePage()
class PlayGroundPage extends HookConsumerWidget {
  const PlayGroundPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickerProvider = useSingleTickerProvider();
    final tabController =
        useTabController(initialLength: 3, vsync: tickerProvider);

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
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                text: 'playground',
              ),
              Tab(
                text: 'ログ',
              ),
              Tab(
                text: 'バケットの状態',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                  child: Text('プレイグラウンド'),
                ),
                Container(
                  child: Text('ろぐ'),
                ),
                Container(
                  child: Text('バケットの状態'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
