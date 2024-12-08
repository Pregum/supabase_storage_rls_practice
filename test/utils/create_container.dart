import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test/test.dart';

/// テスト用のProviderContainerを生成する
/// ref: https://riverpod.dev/ja/docs/essentials/testing
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  addTearDown(container.dispose);

  return container;
}
