import 'package:chirpy_server/src/generated/protocol.dart';
import 'package:chirpy_shared/chirpy_shared.dart';
import 'package:serverpod/serverpod.dart';
import '../filters.dart';

class PostEndpoint extends Endpoint {
  Future<Post> save(Session session, Post item) async {
    return Post.db.insertRow(session, item);
  }

  Future<List<Post>> list(Session session, [PostFilter? filter]) async {
    print('filter: $filter');
    return Post.db.find(
      session,
      where: filter != null ? (_) => filter.expression : null,
    );
  }
}
