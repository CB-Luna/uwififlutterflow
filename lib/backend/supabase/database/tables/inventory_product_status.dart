import '../database.dart';

class InventoryProductStatusTable
    extends SupabaseTable<InventoryProductStatusRow> {
  @override
  String get tableName => 'inventory_product_status';

  @override
  InventoryProductStatusRow createRow(Map<String, dynamic> data) =>
      InventoryProductStatusRow(data);
}

class InventoryProductStatusRow extends SupabaseDataRow {
  InventoryProductStatusRow(super.data);

  @override
  SupabaseTable get table => InventoryProductStatusTable();

  int get inventoryProductStatusId =>
      getField<int>('inventory_product_status_id')!;
  set inventoryProductStatusId(int value) =>
      setField<int>('inventory_product_status_id', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
