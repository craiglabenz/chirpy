import 'package:chirpy_client/chirpy_client.dart';

import 'data.dart';

class PostWrapper extends ModelWrapper {
  PostWrapper(this.post);

  final Post post;

  @override
  int? get id => post.id;

  @override
  Map<String, Object?> toJson() => post.toJson();
}

class PostRepository extends Repository<PostWrapper> {
  PostRepository(this.client)
      : super(
          fromJson: (json) => PostWrapper(Post.fromJson(json, Protocol())),
        );
  final Client client;

  @override
  Future<PostWrapper> persist(PostWrapper item) async {
    return PostWrapper(await client.post.save(item.post));
  }
}
