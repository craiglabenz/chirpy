// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewPostEvent {
  Post get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post item) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post item)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post item)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewPostEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewPostEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewPostEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPostEventCopyWith<NewPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostEventCopyWith<$Res> {
  factory $NewPostEventCopyWith(
          NewPostEvent value, $Res Function(NewPostEvent) then) =
      _$NewPostEventCopyWithImpl<$Res, NewPostEvent>;
  @useResult
  $Res call({Post item});
}

/// @nodoc
class _$NewPostEventCopyWithImpl<$Res, $Val extends NewPostEvent>
    implements $NewPostEventCopyWith<$Res> {
  _$NewPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Post,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveNewPostEventImplCopyWith<$Res>
    implements $NewPostEventCopyWith<$Res> {
  factory _$$SaveNewPostEventImplCopyWith(_$SaveNewPostEventImpl value,
          $Res Function(_$SaveNewPostEventImpl) then) =
      __$$SaveNewPostEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post item});
}

/// @nodoc
class __$$SaveNewPostEventImplCopyWithImpl<$Res>
    extends _$NewPostEventCopyWithImpl<$Res, _$SaveNewPostEventImpl>
    implements _$$SaveNewPostEventImplCopyWith<$Res> {
  __$$SaveNewPostEventImplCopyWithImpl(_$SaveNewPostEventImpl _value,
      $Res Function(_$SaveNewPostEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$SaveNewPostEventImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$SaveNewPostEventImpl implements SaveNewPostEvent {
  const _$SaveNewPostEventImpl(this.item);

  @override
  final Post item;

  @override
  String toString() {
    return 'NewPostEvent.save(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNewPostEventImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNewPostEventImplCopyWith<_$SaveNewPostEventImpl> get copyWith =>
      __$$SaveNewPostEventImplCopyWithImpl<_$SaveNewPostEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post item) save,
  }) {
    return save(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post item)? save,
  }) {
    return save?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post item)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewPostEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewPostEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewPostEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveNewPostEvent implements NewPostEvent {
  const factory SaveNewPostEvent(final Post item) = _$SaveNewPostEventImpl;

  @override
  Post get item;
  @override
  @JsonKey(ignore: true)
  _$$SaveNewPostEventImplCopyWith<_$SaveNewPostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewPostState {
  Post? get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPostStateCopyWith<NewPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostStateCopyWith<$Res> {
  factory $NewPostStateCopyWith(
          NewPostState value, $Res Function(NewPostState) then) =
      _$NewPostStateCopyWithImpl<$Res, NewPostState>;
  @useResult
  $Res call({Post? item});
}

/// @nodoc
class _$NewPostStateCopyWithImpl<$Res, $Val extends NewPostState>
    implements $NewPostStateCopyWith<$Res> {
  _$NewPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Post?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewPostStateImplCopyWith<$Res>
    implements $NewPostStateCopyWith<$Res> {
  factory _$$NewPostStateImplCopyWith(
          _$NewPostStateImpl value, $Res Function(_$NewPostStateImpl) then) =
      __$$NewPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post? item});
}

/// @nodoc
class __$$NewPostStateImplCopyWithImpl<$Res>
    extends _$NewPostStateCopyWithImpl<$Res, _$NewPostStateImpl>
    implements _$$NewPostStateImplCopyWith<$Res> {
  __$$NewPostStateImplCopyWithImpl(
      _$NewPostStateImpl _value, $Res Function(_$NewPostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$NewPostStateImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$NewPostStateImpl extends _NewPostState {
  const _$NewPostStateImpl({this.item}) : super._();

  @override
  final Post? item;

  @override
  String toString() {
    return 'NewPostState(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPostStateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPostStateImplCopyWith<_$NewPostStateImpl> get copyWith =>
      __$$NewPostStateImplCopyWithImpl<_$NewPostStateImpl>(this, _$identity);
}

abstract class _NewPostState extends NewPostState {
  const factory _NewPostState({final Post? item}) = _$NewPostStateImpl;
  const _NewPostState._() : super._();

  @override
  Post? get item;
  @override
  @JsonKey(ignore: true)
  _$$NewPostStateImplCopyWith<_$NewPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
