import '../database.dart';

class RouterDetailTable extends SupabaseTable<RouterDetailRow> {
  @override
  String get tableName => 'router_detail';

  @override
  RouterDetailRow createRow(Map<String, dynamic> data) => RouterDetailRow(data);
}

class RouterDetailRow extends SupabaseDataRow {
  RouterDetailRow(super.data);

  @override
  SupabaseTable get table => RouterDetailTable();

  int get routerDetailId => getField<int>('router_detail_id')!;
  set routerDetailId(int value) => setField<int>('router_detail_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get networkConfiguration => getField<String>('network_configuration')!;
  set networkConfiguration(String value) =>
      setField<String>('network_configuration', value);

  int get inventoryProductFk => getField<int>('inventory_product_fk')!;
  set inventoryProductFk(int value) =>
      setField<int>('inventory_product_fk', value);

  String get serieNo => getField<String>('serie_no')!;
  set serieNo(String value) => setField<String>('serie_no', value);

  String get location => getField<String>('location')!;
  set location(String value) => setField<String>('location', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  String? get mac => getField<String>('mac');
  set mac(String? value) => setField<String>('mac', value);

  String? get imei => getField<String>('imei');
  set imei(String? value) => setField<String>('imei', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get softwareVersion => getField<String>('software_version');
  set softwareVersion(String? value) =>
      setField<String>('software_version', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);
}
