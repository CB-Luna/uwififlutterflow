import '../database.dart';

class SafeShoppingCartItemsTable
    extends SupabaseTable<SafeShoppingCartItemsRow> {
  @override
  String get tableName => 'safe_shopping_cart_items';

  @override
  SafeShoppingCartItemsRow createRow(Map<String, dynamic> data) =>
      SafeShoppingCartItemsRow(data);
}

class SafeShoppingCartItemsRow extends SupabaseDataRow {
  SafeShoppingCartItemsRow(super.data);

  @override
  SupabaseTable get table => SafeShoppingCartItemsTable();

  int get idShoppingCartItems => getField<int>('id_shopping_cart_items')!;
  set idShoppingCartItems(int value) =>
      setField<int>('id_shopping_cart_items', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
