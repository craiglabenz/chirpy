/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Post extends _i1.SerializableEntity {
  Post._({
    this.id,
    required this.author,
    required this.body,
    required this.createdAt,
  });

  factory Post({
    int? id,
    required String author,
    required String body,
    required DateTime createdAt,
  }) = _PostImpl;

  factory Post.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Post(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      author:
          serializationManager.deserialize<String>(jsonSerialization['author']),
      body: serializationManager.deserialize<String>(jsonSerialization['body']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String author;

  String body;

  DateTime createdAt;

  Post copyWith({
    int? id,
    String? author,
    String? body,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'author': author,
      'body': body,
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required String author,
    required String body,
    required DateTime createdAt,
  }) : super._(
          id: id,
          author: author,
          body: body,
          createdAt: createdAt,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    String? author,
    String? body,
    DateTime? createdAt,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      author: author ?? this.author,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
