import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/my_provider_observer.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/routing/router.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer(observers: [
    MyProviderObserver(),
  ]);
  final client = await container.read(supabaseServiceFutureProvider.future);
  final serviceContainer = ProviderContainer(parent: container, overrides: [
    supabaseServiceProvider.overrideWithValue(client),
  ]);
  // final s = serviceContainer.read(supabaseServiceProvider);
  // logger.d('s: $s');

  runApp(
    UncontrolledProviderScope(
      container: serviceContainer,
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useMemoized(() => AppRouter());

    return MaterialApp.router(
      title: 'Supabase Storage RLS Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter.config(),
    );
  }
}
