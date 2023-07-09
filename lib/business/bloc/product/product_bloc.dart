import 'package:app/business/bloc/base_bloc.dart';
import 'package:app/business/bloc/base_event.dart';
import 'package:app/business/bloc/product/product_event.dart';
import 'package:app/business/bloc/product/product_state.dart';
import 'package:app/services/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends BaseBloc<BaseEvent, ProductState> {
  static const String _tag = 'ProductBloc';

  final LogService _log = LogService.getInstance();

  ProductBloc() : super(ProductState.initial()) {
    on<ProductLoadingEvent>(_onLoading);
    on<ProductListEvent>(_onProductList);
  }

  Future<void> _onLoading(
      ProductLoadingEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(actionLoading: event.loading));
  }

  Future<void> _onProductList(
      ProductListEvent event, Emitter<ProductState> emit) async {
    emit(state.copyWith(
        list: event.items,
        actionCount: event.count,
        actionOffset: event.offset,
        actionLimit: event.limit));
    _log.d(
      state,
    );
  }

  List<dynamic> get items => state.items;

  bool get success => state.success;

  bool get loading => state.loading;

  Future<dynamic> getItems() async {
    add(ProductLoadingEvent(loading: true));
    try {
      final List<dynamic> list = List.empty();
      add(ProductListEvent(list, 0, 0, 0));
    } catch (e, stackTrace) {
      _log.e(_tag, e, stackTrace);
    } finally {
      add(ProductLoadingEvent(loading: false));
    }
  }
}
