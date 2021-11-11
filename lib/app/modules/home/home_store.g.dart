// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$listHomeAtom = Atom(name: 'HomeStoreBase.listHome');

  @override
  List<HomeModel> get listHome {
    _$listHomeAtom.reportRead();
    return super.listHome;
  }

  @override
  set listHome(List<HomeModel> value) {
    _$listHomeAtom.reportWrite(value, super.listHome, () {
      super.listHome = value;
    });
  }

  final _$myCarAtom = Atom(name: 'HomeStoreBase.myCar');

  @override
  List<MyCarModel> get myCar {
    _$myCarAtom.reportRead();
    return super.myCar;
  }

  @override
  set myCar(List<MyCarModel> value) {
    _$myCarAtom.reportWrite(value, super.myCar, () {
      super.myCar = value;
    });
  }

  final _$getStoreAsyncAction = AsyncAction('HomeStoreBase.getStore');

  @override
  Future<void> getStore() {
    return _$getStoreAsyncAction.run(() => super.getStore());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void addToMyCar(HomeModel product) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.addToMyCar');
    try {
      return super.addToMyCar(product);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listHome: ${listHome},
myCar: ${myCar}
    ''';
  }
}
