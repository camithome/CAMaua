// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FinancesStore on _FinancesStoreBase, Store {
  final _$listFinancesAtom = Atom(name: '_FinancesStoreBase.listFinances');

  @override
  List<FinancesModel> get listFinances {
    _$listFinancesAtom.reportRead();
    return super.listFinances;
  }

  @override
  set listFinances(List<FinancesModel> value) {
    _$listFinancesAtom.reportWrite(value, super.listFinances, () {
      super.listFinances = value;
    });
  }

  final _$startDateAtom = Atom(name: '_FinancesStoreBase.startDate');

  @override
  DateTime? get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(DateTime? value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  final _$endDateAtom = Atom(name: '_FinancesStoreBase.endDate');

  @override
  DateTime? get endDate {
    _$endDateAtom.reportRead();
    return super.endDate;
  }

  @override
  set endDate(DateTime? value) {
    _$endDateAtom.reportWrite(value, super.endDate, () {
      super.endDate = value;
    });
  }

  final _$getStockAsyncAction = AsyncAction('_FinancesStoreBase.getStock');

  @override
  Future<void> getStock() {
    return _$getStockAsyncAction.run(() => super.getStock());
  }

  final _$setStartDateAsyncAction =
      AsyncAction('_FinancesStoreBase.setStartDate');

  @override
  Future<void> setStartDate(dynamic startDate) {
    return _$setStartDateAsyncAction.run(() => super.setStartDate(startDate));
  }

  final _$setEndDateAsyncAction = AsyncAction('_FinancesStoreBase.setEndDate');

  @override
  Future<void> setEndDate(dynamic endDate) {
    return _$setEndDateAsyncAction.run(() => super.setEndDate(endDate));
  }

  @override
  String toString() {
    return '''
listFinances: ${listFinances},
startDate: ${startDate},
endDate: ${endDate}
    ''';
  }
}
