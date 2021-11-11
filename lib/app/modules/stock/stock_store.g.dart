// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StockStore on _StockStoreBase, Store {
  final _$listStockAtom = Atom(name: '_StockStoreBase.listStock');

  @override
  List<ProductModel> get listStock {
    _$listStockAtom.reportRead();
    return super.listStock;
  }

  @override
  set listStock(List<ProductModel> value) {
    _$listStockAtom.reportWrite(value, super.listStock, () {
      super.listStock = value;
    });
  }

  @override
  String toString() {
    return '''
listStock: ${listStock}
    ''';
  }
}
