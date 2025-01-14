import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_storage_rls_practice/config/logger.dart';
import 'package:supabase_storage_rls_practice/data/repository/supabase_auth_repository.dart';
import 'package:supabase_storage_rls_practice/data/service/supabase_service.dart';
import 'package:supabase_storage_rls_practice/routing/router.gr.dart';
import 'package:supabase_storage_rls_practice/ui/pages/login/view_model/login_view_model.dart';

enum UserRole {
  userA,
  userB,
  anonymous;

  String get name {
    return switch (this) {
      UserRole.userA => 'User A',
      UserRole.userB => 'User B',
      UserRole.anonymous => 'Anonymous'
    };
  }

  String get email {
    return switch (this) {
      UserRole.userA => 'usera@example.com',
      UserRole.userB => 'userb@example.com',
      _ => throw UnimplementedError(),
    };
  }

  String get password {
    return switch (this) {
      UserRole.userA => 'userA123456',
      UserRole.userB => 'userB123456',
      _ => throw UnimplementedError(),
    };
  }
}

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedUser = useState<UserRole>(UserRole.userA);
    useEffect(() {
      logger.i('LoginPage#useEffect');
      return () {};
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'ログインするユーザーを選択してください',
              ),
              for (final UserRole role in UserRole.values)
                RadioListTile<UserRole>(
                  value: role,
                  groupValue: selectedUser.value,
                  title: Text(role.name),
                  onChanged: (value) {
                    selectedUser.value = value!;
                  },
                ),
              ElevatedButton(
                child: const Text('ログイン'),
                onPressed: () async {
                  logger.d('login start');
                  final viewModel = ref.read(loginViewModelProvider.notifier);

                  try {
                    final result =
                        await viewModel.signIn(userRole: selectedUser.value);
                    logger.i('result: $result');
                    if (context.mounted) {
                      logger.i('routes: ${context.router.routeData.path}');
                      context.router.replaceAll([
                        const PlayGroundRoute(),
                      ]);
                    }
                  } catch (e) {
                    logger.e(e);
                  }
                  logger.d('login end');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
