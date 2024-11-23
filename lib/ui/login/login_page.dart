import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum UserRole {
  userA,
  userB,
  guest,
  anonymous;
}

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioVal = useState<UserRole>(UserRole.userA);

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
                  groupValue: radioVal.value,
                  title: Text(role.name),
                  onChanged: (value) {
                    radioVal.value = value!;
                  },
                ),
              ElevatedButton(
                child: const Text('ログイン'),
                onPressed: () {
                  // ref.read(userRoleProvider).state = radioVal.value;
                  // AutoRouter.of(context).replace(const MyHomeRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
