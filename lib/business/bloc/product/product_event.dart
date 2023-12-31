import 'package:app/business/bloc/base_event.dart';

abstract class ProductEvent extends BaseEvent {}

class ProductStateEvent extends ProductEvent {
  final bool success;

  ProductStateEvent({this.success = true});

  @override
  List<Object> get props => [success];
}

class ProductLoadingEvent extends ProductEvent {
  final bool loading;

  ProductLoadingEvent({required this.loading});

  @override
  List<Object> get props => [loading];
}

class ProductListEvent extends ProductEvent {
  final List<dynamic> items;
  final int count;
  final int offset;
  final int limit;

  ProductListEvent(this.items, this.count, this.offset, this.limit);

  @override
  List<Object> get props => [items, count, offset, limit];
}
