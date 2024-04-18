import 'package:chirpy_client/chirpy_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

typedef Json = Map<String, Object?>;

enum BooleanLogic { and, or }

abstract class Filter<T> {
  const Filter();
  bool apply(T obj);
  List<T> applyToList(List<T> objs) => objs.where(apply).toList();

  Json toJson() => throw UnimplementedError();
  static Filter<T> fromJson<T>(Json serialized) => throw UnimplementedError();
}

abstract class ComboFilter<T> extends Filter<T> {
  ComboFilter({required this.children, required this.operator});

  final List<Filter<T>> children;
  final BooleanLogic operator;

  @override
  bool apply(T obj) => switch (operator) {
        BooleanLogic.and => children.every((child) => child.apply(obj)),
        BooleanLogic.or => children.any((child) => child.apply(obj)),
      };
}

class AndFilter<T> extends ComboFilter<T> {
  AndFilter({required super.children}) : super(operator: BooleanLogic.and);
}

class OrFilter<T> extends ComboFilter<T> {
  OrFilter({required super.children}) : super(operator: BooleanLogic.or);
}

@Freezed()
class PostFilter extends Filter<Post> with _$PostFilter {
  const PostFilter._();
  const factory PostFilter.createdAfter(DateTime value) =
      PostFilterCreatedAfter;
  const factory PostFilter.createdBefore(DateTime value) =
      PostFilterCreatedBefore;
  const factory PostFilter.bodyContains(String value) = PostFilterBodyContains;

  factory PostFilter.fromJson(Map<String, dynamic> json) =>
      _$PostFilterFromJson(json);

  @override
  bool apply(Post obj) => map(
        createdAfter: (f) => obj.createdAt.difference(f.value) > Duration.zero,
        createdBefore: (f) => obj.createdAt.difference(f.value) < Duration.zero,
        bodyContains: (f) => obj.body.contains(f.value),
      );
}
