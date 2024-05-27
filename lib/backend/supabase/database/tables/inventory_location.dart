import '../database.dart';

class InventoryLocationTable extends SupabaseTable<InventoryLocationRow> {
  @override
  String get tableName => 'inventory_location';

  @override
  InventoryLocationRow createRow(Map<String, dynamic> data) =>
      InventoryLocationRow(data);
}

class InventoryLocationRow extends SupabaseDataRow {
  InventoryLocationRow(super.data);

  @override
  SupabaseTable get table => InventoryLocationTable();

  int get inventoryLocationId => getField<int>('inventory_location_id')!;
  set inventoryLocationId(int value) =>
      setField<int>('inventory_location_id', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
