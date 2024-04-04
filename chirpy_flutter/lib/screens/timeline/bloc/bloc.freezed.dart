// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimelineEvent {
  Post get post => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePostEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePostEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePostEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineEventCopyWith<TimelineEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineEventCopyWith<$Res> {
  factory $TimelineEventCopyWith(
          TimelineEvent value, $Res Function(TimelineEvent) then) =
      _$TimelineEventCopyWithImpl<$Res, TimelineEvent>;
  @useResult
  $Res call({Post post});
}

/// @nodoc
class _$TimelineEventCopyWithImpl<$Res, $Val extends TimelineEvent>
    implements $TimelineEventCopyWith<$Res> {
  _$TimelineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePostEventImplCopyWith<$Res>
    implements $TimelineEventCopyWith<$Res> {
  factory _$$SavePostEventImplCopyWith(
          _$SavePostEventImpl value, $Res Function(_$SavePostEventImpl) then) =
      __$$SavePostEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post});
}

/// @nodoc
class __$$SavePostEventImplCopyWithImpl<$Res>
    extends _$TimelineEventCopyWithImpl<$Res, _$SavePostEventImpl>
    implements _$$SavePostEventImplCopyWith<$Res> {
  __$$SavePostEventImplCopyWithImpl(
      _$SavePostEventImpl _value, $Res Function(_$SavePostEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$SavePostEventImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$SavePostEventImpl implements SavePostEvent {
  const _$SavePostEventImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'TimelineEvent.save(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePostEventImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePostEventImplCopyWith<_$SavePostEventImpl> get copyWith =>
      __$$SavePostEventImplCopyWithImpl<_$SavePostEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) save,
  }) {
    return save(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? save,
  }) {
    return save?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePostEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePostEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePostEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SavePostEvent implements TimelineEvent {
  const factory SavePostEvent(final Post post) = _$SavePostEventImpl;

  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  _$$SavePostEventImplCopyWith<_$SavePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimelineState {
  List<Post> get posts => throw _privateConstructorUsedError;
  TimelineError? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimelineStateCopyWith<TimelineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res, TimelineState>;
  @useResult
  $Res call({List<Post> posts, TimelineError? error});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res, $Val extends TimelineState>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TimelineError?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimelineStateImplCopyWith<$Res>
    implements $TimelineStateCopyWith<$Res> {
  factory _$$TimelineStateImplCopyWith(
          _$TimelineStateImpl value, $Res Function(_$TimelineStateImpl) then) =
      __$$TimelineStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Post> posts, TimelineError? error});
}

/// @nodoc
class __$$TimelineStateImplCopyWithImpl<$Res>
    extends _$TimelineStateCopyWithImpl<$Res, _$TimelineStateImpl>
    implements _$$TimelineStateImplCopyWith<$Res> {
  __$$TimelineStateImplCopyWithImpl(
      _$TimelineStateImpl _value, $Res Function(_$TimelineStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? error = freezed,
  }) {
    return _then(_$TimelineStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TimelineError?,
    ));
  }
}

/// @nodoc

class _$TimelineStateImpl extends _TimelineState {
  const _$TimelineStateImpl({required final List<Post> posts, this.error})
      : _posts = posts,
        super._();

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final TimelineError? error;

  @override
  String toString() {
    return 'TimelineState(posts: $posts, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_posts), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineStateImplCopyWith<_$TimelineStateImpl> get copyWith =>
      __$$TimelineStateImplCopyWithImpl<_$TimelineStateImpl>(this, _$identity);
}

abstract class _TimelineState extends TimelineState {
  const factory _TimelineState(
      {required final List<Post> posts,
      final TimelineError? error}) = _$TimelineStateImpl;
  const _TimelineState._() : super._();

  @override
  List<Post> get posts;
  @override
  TimelineError? get error;
  @override
  @JsonKey(ignore: true)
  _$$TimelineStateImplCopyWith<_$TimelineStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
