import '../database.dart';

class HeatmapInventoryViewTable extends SupabaseTable<HeatmapInventoryViewRow> {
  @override
  String get tableName => 'heatmap_inventory_view';

  @override
  HeatmapInventoryViewRow createRow(Map<String, dynamic> data) =>
      HeatmapInventoryViewRow(data);
}

class HeatmapInventoryViewRow extends SupabaseDataRow {
  HeatmapInventoryViewRow(super.data);

  @override
  SupabaseTable get table => HeatmapInventoryViewTable();

  double? get ano => getField<double>('Año');
  set ano(double? value) => setField<double>('Año', value);

  double? get mes => getField<double>('Mes');
  set mes(double? value) => setField<double>('Mes', value);

  dynamic get marcadores => getField<dynamic>('marcadores');
  set marcadores(dynamic value) => setField<dynamic>('marcadores', value);
}
