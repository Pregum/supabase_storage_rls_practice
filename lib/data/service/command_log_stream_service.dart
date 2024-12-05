import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supabase_storage_rls_practice/domain/model/command_result.dart';

part 'command_log_stream_service.g.dart';

@riverpod
class CommandLogStreamService extends _$CommandLogStreamService {
  // FIXME: 5要素までしかaddできないので原因を調査する
  final ReplaySubject<CommandResult> _streamController =
      ReplaySubject<CommandResult>();

  @override
  Stream<CommandResult> build() {
    return _streamController.stream;
  }

  void add(CommandResult result) {
    _streamController.add(result);
  }
}
