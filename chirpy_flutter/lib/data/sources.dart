import 'package:chirpy_flutter/data/data.dart';
import 'package:chirpy_shared/src/data/filters.dart';
import 'package:get_it/get_it.dart';

class LocalSource<T> extends DataContract<T> {
  LocalSource() : bindings = GetIt.I<ModelBindings<T>>();
  final _localCache = <int, T>{};
  final ModelBindings<T> bindings;

  @override
  Future<List<T>> list([Filter<T>? filter]) async {
    if (filter != null) {
      return filter.applyToList(_localCache.values.toList());
    }
    return _localCache.values.toList();
  }

  @override
  Future<T> save(T item) async {
    int? itemId = bindings.getId(item);
    assert(itemId != null, 'Cannot locally persist an unsaved item');
    _localCache[itemId!] = item;
    return item;
  }
}

abstract class RemoteSource<T> extends DataContract<T> {
  RemoteSource();
}

class ServerpodSource<T> extends RemoteSource<T> {
  ServerpodSource({
    required this.listHandler,
    required this.saveHandler,
  }) : bindings = GetIt.I<ModelBindings<T>>();

  final ModelBindings<T> bindings;
  final Future<T> Function(T) saveHandler;
  final Future<List<T>> Function([Filter<T>?]) listHandler;

  @override
  Future<List<T>> list([Filter<T>? filter]) => listHandler(filter);

  @override
  Future<T> save(T item) => saveHandler(item);
}
