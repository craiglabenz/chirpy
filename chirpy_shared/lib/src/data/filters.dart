import 'package:chirpy_client/chirpy_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

typedef Json = Map<String, Object?>;

sealed class Filter<T> {
  const Filter();

  bool apply(T obj);
  List<T> applyToList(List<T> objs) => objs.where(apply).toList();

  Json toJson() => throw UnimplementedError();
}

@Freezed()
class PostFilter extends Filter<Post> with _$PostFilter {
  const PostFilter._();
  const factory PostFilter.and(List<PostFilter> children) = AndPostFilter;
  const factory PostFilter.or(List<PostFilter> children) = OrPostFilter;
  const factory PostFilter.createdAfter(DateTime value) =
      PostFilterCreatedAfter;
  const factory PostFilter.createdBefore(DateTime value) =
      PostFilterCreatedBefore;
  const factory PostFilter.bodyContains(String value) = PostFilterBodyContains;

  factory PostFilter.fromJson(Map<String, dynamic> json) =>
      _$PostFilterFromJson(json);

  @override
  bool apply(Post obj) => map(
        and: (f) => f.children.every((child) => child.apply(obj)),
        or: (f) => f.children.any((child) => child.apply(obj)),
        createdAfter: (f) => obj.createdAt.difference(f.value) > Duration.zero,
        createdBefore: (f) => obj.createdAt.difference(f.value) < Duration.zero,
        bodyContains: (f) => obj.body.contains(f.value),
      );
}
