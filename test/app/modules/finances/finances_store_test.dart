import 'package:flutter_test/flutter_test.dart';
import 'package:treinandoreplica/app/modules/finances/finances_store.dart';
 
void main() {
  late FinancesStore store;

  setUpAll(() {
    store = FinancesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}