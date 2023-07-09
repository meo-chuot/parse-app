import 'package:app/business/bloc/base_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_state.g.dart';

@JsonSerializable()
class ProductState extends BaseState {
  final bool success;

  final bool loading;

  final int count;

  final int offset;

  final int limit;

  final List<dynamic> items;

  ProductState(
      {required this.success,
      required this.loading,
      required this.items,
      required this.count,
      required this.offset,
      required this.limit});

  factory ProductState.initial() {
    return ProductState(
        success: true,
        loading: false,
        count: 0,
        offset: 0,
        limit: 12,
        items: List.empty());
  }

  @override
  List<Object?> get props => [success, loading, items];

  ProductState copyWith(
      {bool? actionState,
      bool? actionLoading,
      List<dynamic>? list,
      int? actionCount,
      int? actionOffset,
      int? actionLimit}) {
    return ProductState(
        success: actionState ?? success,
        loading: actionLoading ?? loading,
        items: list ?? items,
        count: actionCount ?? count,
        offset: actionOffset ?? offset,
        limit: actionLimit ?? limit);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{};
}
