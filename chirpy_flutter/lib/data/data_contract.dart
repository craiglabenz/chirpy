import 'package:chirpy_shared/chirpy_shared.dart';

abstract class DataContract<T> {
  Future<T> save(T item);
  Future<List<T>> list([Filter<T>? filter]);
}
