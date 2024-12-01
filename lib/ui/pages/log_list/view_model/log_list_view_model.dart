import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'log_list_view_model.g.dart';

@riverpod
class LogListViewModel extends _$LogListViewModel {
  @override
  LogListViewModel build() {
    return this;
  }

  Future<void> fetchLogs() async {
    // try {
    //   final logs = await ref.read(logListUseCaseProvider).execute();
    //   state = logs;
    // } catch (e) {
    //   logger.e(e);
    // }
  }
}
