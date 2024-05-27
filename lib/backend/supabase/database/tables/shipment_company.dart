import '../database.dart';

class ShipmentCompanyTable extends SupabaseTable<ShipmentCompanyRow> {
  @override
  String get tableName => 'shipment_company';

  @override
  ShipmentCompanyRow createRow(Map<String, dynamic> data) =>
      ShipmentCompanyRow(data);
}

class ShipmentCompanyRow extends SupabaseDataRow {
  ShipmentCompanyRow(super.data);

  @override
  SupabaseTable get table => ShipmentCompanyTable();

  int get shipmentCompanyId => getField<int>('shipment_company_id')!;
  set shipmentCompanyId(int value) =>
      setField<int>('shipment_company_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get createdBy => getField<int>('created_by')!;
  set createdBy(int value) => setField<int>('created_by', value);

  bool get visible => getField<bool>('visible')!;
  set visible(bool value) => setField<bool>('visible', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
