import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_post_bloc.freezed.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc(this.repo, super.initialState) {
    on<NewPostEvent>(
      (event, emit) => event.map(save: (event) => _savePost(event, emit)),
    );
  }

  Future<void> _savePost(
    SaveNewPostEvent event,
    Emitter<NewPostState> emit,
  ) async {
    final savedPost = await repo.save(event.item);
    emit(state.copyWith(item: savedPost));
  }

  final PostRepository repo;
}

@Freezed()
class NewPostEvent with _$NewPostEvent {
  const factory NewPostEvent.save(Post item) = SaveNewPostEvent;
}

@Freezed()
class NewPostState with _$NewPostState {
  const factory NewPostState({Post? item}) = _NewPostState;
  const NewPostState._();

  factory NewPostState.initial() => const NewPostState();
}
