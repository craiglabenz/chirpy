import 'package:chirpy_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint {
  Future<Post> save(Session session, Post item) async {
    return Post.db.insertRow(session, item);
  }

  Future<List<Post>> list(Session session) async {
    return Post.db.find(session);
  }
}
