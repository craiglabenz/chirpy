import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_shared/chirpy_shared.dart';
import 'package:get_it/get_it.dart';

abstract class ModelBindings<T> {
  const ModelBindings();

  int? getId(T obj);

  Map<String, Object?> toJson(T obj);

  T fromJson(Map<String, Object?> json);

  int sortDesc(T a, T b);
}

abstract class Repository<T> extends DataContract<T> {
  Repository({
    required this.localSource,
    required this.remoteSource,
  }) : bindings = GetIt.I<ModelBindings<T>>();

  final ModelBindings<T> bindings;
  final LocalSource<T> localSource;
  final RemoteSource<T> remoteSource;

  Future<T> save(T item) async {
    final savedItem = await remoteSource.save(item);
    localSource.save(savedItem);
    return savedItem;
  }

  Future<List<T>> list([Filter<T>? filter]) async {
    // TODO: This assumes any results are a full cache hit.
    List<T> items = await localSource.list(filter);
    if (items.isEmpty) {
      print('Repo.list filter $filter');
      items = await remoteSource.list(filter);
      for (final item in items) {
        localSource.save(item);
      }
    }
    // TODO: maybe sort these when we cache and not every read
    return items..sort(bindings.sortDesc);
  }

  // // TODO: actually pull from _localCache
  // DateTime? get maxCreatedAt => DateTime.now();

  // Future<List<T>> refresh() async {
  //   final newItems = await loadRefresh();
  //   for (final item in newItems) {
  //     _localCache[bindings.getId(item)!] = item;
  //   }
  //   // TODO: maybe sort these when we cache and not every read
  //   return _localCache.values.toList()..sort(bindings.sortDesc);
  // }

  // Future<T> persist(T item);
  // Future<List<T>> load([Filter? filter]);
  // Future<List<T>> loadRefresh();
}
