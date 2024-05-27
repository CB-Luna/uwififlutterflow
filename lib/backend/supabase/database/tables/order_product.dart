import '../database.dart';

class OrderProductTable extends SupabaseTable<OrderProductRow> {
  @override
  String get tableName => 'order_product';

  @override
  OrderProductRow createRow(Map<String, dynamic> data) => OrderProductRow(data);
}

class OrderProductRow extends SupabaseDataRow {
  OrderProductRow(super.data);

  @override
  SupabaseTable get table => OrderProductTable();

  int get orderProductId => getField<int>('order_product_id')!;
  set orderProductId(int value) => setField<int>('order_product_id', value);

  int get orderFk => getField<int>('order_fk')!;
  set orderFk(int value) => setField<int>('order_fk', value);

  int get inventoryProductFk => getField<int>('inventory_product_fk')!;
  set inventoryProductFk(int value) =>
      setField<int>('inventory_product_fk', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
