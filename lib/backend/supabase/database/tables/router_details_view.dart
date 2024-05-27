import '../database.dart';

class RouterDetailsViewTable extends SupabaseTable<RouterDetailsViewRow> {
  @override
  String get tableName => 'router_details_view';

  @override
  RouterDetailsViewRow createRow(Map<String, dynamic> data) =>
      RouterDetailsViewRow(data);
}

class RouterDetailsViewRow extends SupabaseDataRow {
  RouterDetailsViewRow(super.data);

  @override
  SupabaseTable get table => RouterDetailsViewTable();

  int? get routerDetailId => getField<int>('router_detail_id');
  set routerDetailId(int? value) => setField<int>('router_detail_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get networkConfiguration => getField<String>('network_configuration');
  set networkConfiguration(String? value) =>
      setField<String>('network_configuration', value);

  int? get inventoryProductFk => getField<int>('inventory_product_fk');
  set inventoryProductFk(int? value) =>
      setField<int>('inventory_product_fk', value);

  String? get serieNo => getField<String>('serie_no');
  set serieNo(String? value) => setField<String>('serie_no', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  dynamic get sim => getField<dynamic>('sim');
  set sim(dynamic value) => setField<dynamic>('sim', value);
}
