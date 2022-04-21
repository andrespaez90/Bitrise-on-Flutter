import 'package:rxdart/subjects.dart';

abstract class BaseRepository<T>
    implements RepositoryDataConsumer<T>, RepositoryDataProducer<T> {
  final BehaviorSubject<T> _repository = BehaviorSubject<T>();

  @override
  Stream<T> get stream => _repository.stream.distinct();

  @override
  T? get value => _repository.stream.valueOrNull;

  @override
  void set(T data) {
    _repository.add(data);
  }
}

abstract class RepositoryDataConsumer<T> {
  T? get value;
  Stream<T> get stream;
}

abstract class RepositoryDataProducer<T> {
  void set(T data);
  void clear();
  void edit(T? Function(T? t) modifier);
}
