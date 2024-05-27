import '../database.dart';

class InventoryDashboardsViewTable
    extends SupabaseTable<InventoryDashboardsViewRow> {
  @override
  String get tableName => 'inventory_dashboards_view';

  @override
  InventoryDashboardsViewRow createRow(Map<String, dynamic> data) =>
      InventoryDashboardsViewRow(data);
}

class InventoryDashboardsViewRow extends SupabaseDataRow {
  InventoryDashboardsViewRow(super.data);

  @override
  SupabaseTable get table => InventoryDashboardsViewTable();

  int? get inventoryProductId => getField<int>('inventory_product_id');
  set inventoryProductId(int? value) =>
      setField<int>('inventory_product_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get productTypeId => getField<int>('product_type_id');
  set productTypeId(int? value) => setField<int>('product_type_id', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get inventoryLocationId => getField<int>('inventory_location_id');
  set inventoryLocationId(int? value) =>
      setField<int>('inventory_location_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get inventoryProductStatusId =>
      getField<int>('inventory_product_status_id');
  set inventoryProductStatusId(int? value) =>
      setField<int>('inventory_product_status_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
