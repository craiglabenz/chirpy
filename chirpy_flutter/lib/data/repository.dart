import 'package:chirpy_shared/chirpy_shared.dart';

abstract class ModelBindings<T> {
  const ModelBindings();

  int? getId(T obj);

  Map<String, Object?> toJson(T obj);

  T fromJson(Map<String, Object?> json);

  int sortDesc(T a, T b);
}

abstract class Repository<T> {
  Repository({required this.bindings});

  final ModelBindings<T> bindings;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final savedItem = await persist(item);
    _localCache[bindings.getId(savedItem)!] = savedItem;
    return savedItem;
  }

  Future<List<T>> list([Filter? filter]) async {
    final items = await load(filter);
    for (final item in items) {
      _localCache[bindings.getId(item)!] = item;
    }
    // TODO: maybe sort these when we cache and not every read
    return _localCache.values.toList()..sort(bindings.sortDesc);
  }

  // TODO: actually pull from _localCache
  DateTime? get maxCreatedAt => DateTime.now();

  Future<List<T>> refresh() async {
    final newItems = await loadRefresh();
    for (final item in newItems) {
      _localCache[bindings.getId(item)!] = item;
    }
    // TODO: maybe sort these when we cache and not every read
    return _localCache.values.toList()..sort(bindings.sortDesc);
  }

  Future<T> persist(T item);
  Future<List<T>> load([Filter? filter]);
  Future<List<T>> loadRefresh();
}
