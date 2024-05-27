import '../database.dart';

class CustomerHeatmapViewTable extends SupabaseTable<CustomerHeatmapViewRow> {
  @override
  String get tableName => 'customer_heatmap_view';

  @override
  CustomerHeatmapViewRow createRow(Map<String, dynamic> data) =>
      CustomerHeatmapViewRow(data);
}

class CustomerHeatmapViewRow extends SupabaseDataRow {
  CustomerHeatmapViewRow(super.data);

  @override
  SupabaseTable get table => CustomerHeatmapViewTable();

  String? get estado => getField<String>('Estado');
  set estado(String? value) => setField<String>('Estado', value);

  dynamic get registros => getField<dynamic>('Registros');
  set registros(dynamic value) => setField<dynamic>('Registros', value);
}
