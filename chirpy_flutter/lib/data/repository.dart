import 'package:chirpy_client/chirpy_client.dart';

abstract class ModelWrapper {
  int? get id;
  Map<String, Object?> toJson();
}

abstract class Repository<T extends ModelWrapper> {
  Repository({required this.fromJson});

  final T Function(Map<String, Object?> json) fromJson;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final savedItem = await persist(item);
    _localCache[savedItem.id!] = savedItem;
    return savedItem;
  }

  Future<T> persist(T item);
}
