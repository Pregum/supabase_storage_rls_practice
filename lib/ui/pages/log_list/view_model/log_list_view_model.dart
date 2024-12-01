import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';

part 'log_list_view_model.g.dart';

@riverpod
class LogListViewModel extends _$LogListViewModel {
  @override
  List<CommandResult> build() {
    return [];
  }

  void addLog(CommandResult log) {
    if (state.any((e) => e.command == log.command)) {
      return;
    }
    final newLogs = [...state, log];
    state = newLogs;
  }

  void clearLogs() {
    state = [];
  }
}
