import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeline_bloc.freezed.dart';

class TimelineError {}

class TimelineBloc extends Bloc<TimelineEvent, TimelineState> {
  TimelineBloc(this.repo, super.initialState) {
    on<TimelineEvent>(
      (TimelineEvent e, emit) => e.map(load: (e) => _loadTimeline(e, emit)),
    );
  }

  Future<void> _loadTimeline(
    LoadTimelineEvent event,
    Emitter<TimelineState> emit,
  ) async {
    final posts = await repo.list();
    emit(
      state.copyWith(
        posts: posts,
        error: null,
      ),
    );
  }

  final PostRepository repo;
}

@Freezed()
class TimelineEvent with _$TimelineEvent {
  const factory TimelineEvent.load() = LoadTimelineEvent;
}

@Freezed()
class TimelineState with _$TimelineState {
  const factory TimelineState({
    required List<Post> posts,
    TimelineError? error,
  }) = _TimelineState;
  const TimelineState._();

  factory TimelineState.initial() => const TimelineState(posts: []);
}
