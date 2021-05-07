import 'package:flutter_test/flutter_test.dart';
import 'package:treinandoreplica/app/modules/stock/stock_store.dart';
 
void main() {
  StockStore store;

  setUpAll(() {
    store = StockStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}