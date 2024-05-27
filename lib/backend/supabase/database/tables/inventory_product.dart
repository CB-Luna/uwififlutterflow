import '../database.dart';

class InventoryProductTable extends SupabaseTable<InventoryProductRow> {
  @override
  String get tableName => 'inventory_product';

  @override
  InventoryProductRow createRow(Map<String, dynamic> data) =>
      InventoryProductRow(data);
}

class InventoryProductRow extends SupabaseDataRow {
  InventoryProductRow(super.data);

  @override
  SupabaseTable get table => InventoryProductTable();

  int get inventoryProductId => getField<int>('inventory_product_id')!;
  set inventoryProductId(int value) =>
      setField<int>('inventory_product_id', value);

  int get inventoryLocationFk => getField<int>('inventory_location_fk')!;
  set inventoryLocationFk(int value) =>
      setField<int>('inventory_location_fk', value);

  int? get providerInvoiceFk => getField<int>('provider_invoice_fk');
  set providerInvoiceFk(int? value) =>
      setField<int>('provider_invoice_fk', value);

  int get productFk => getField<int>('product_fk')!;
  set productFk(int value) => setField<int>('product_fk', value);

  int get barcodeTypeFk => getField<int>('barcode_type_fk')!;
  set barcodeTypeFk(int value) => setField<int>('barcode_type_fk', value);

  int get createdBy => getField<int>('created_by')!;
  set createdBy(int value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get inventoryProductStatusFk =>
      getField<int>('inventory_product_status_fk')!;
  set inventoryProductStatusFk(int value) =>
      setField<int>('inventory_product_status_fk', value);
}
