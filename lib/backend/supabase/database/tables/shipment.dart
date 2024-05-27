import '../database.dart';

class ShipmentTable extends SupabaseTable<ShipmentRow> {
  @override
  String get tableName => 'shipment';

  @override
  ShipmentRow createRow(Map<String, dynamic> data) => ShipmentRow(data);
}

class ShipmentRow extends SupabaseDataRow {
  ShipmentRow(super.data);

  @override
  SupabaseTable get table => ShipmentTable();

  int get shipmentId => getField<int>('shipment_id')!;
  set shipmentId(int value) => setField<int>('shipment_id', value);

  int get orderFk => getField<int>('order_fk')!;
  set orderFk(int value) => setField<int>('order_fk', value);

  int get shipmentCompanyFk => getField<int>('shipment_company_fk')!;
  set shipmentCompanyFk(int value) =>
      setField<int>('shipment_company_fk', value);

  String get trackingNumber => getField<String>('tracking_number')!;
  set trackingNumber(String value) =>
      setField<String>('tracking_number', value);

  DateTime? get startedAt => getField<DateTime>('started_at');
  set startedAt(DateTime? value) => setField<DateTime>('started_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);
}
