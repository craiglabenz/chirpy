import 'package:chirpy_client/chirpy_client.dart';
import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_shared/chirpy_shared.dart';
import 'package:injectable/injectable.dart';

class PostBindings extends ModelBindings<Post> {
  const PostBindings();

  @override
  int? getId(Post obj) => obj.id;

  @override
  Map<String, Object?> toJson(Post obj) => obj.toJson();

  @override
  Post fromJson(Map<String, Object?> json) => Post.fromJson(json, Protocol());

  @override
  int sortDesc(Post a, Post b) => b.createdAt.compareTo(a.createdAt);
}

@Singleton()
class PostRepository extends Repository<Post> {
  PostRepository(this.client) : super(bindings: const PostBindings());
  final Client client;

  @override
  Future<Post> persist(Post item) {
    return client.post.save(item);
  }

  @override
  Future<List<Post>> load([Filter<Post>? filter]) {
    return client.post.list(filter);
  }

  @override
  Future<List<Post>> loadRefresh() => load(
        maxCreatedAt != null ? PostFilter.createdAfter(maxCreatedAt!) : null,
      );
}
