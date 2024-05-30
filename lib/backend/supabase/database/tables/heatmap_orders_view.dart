import '../database.dart';

class HeatmapOrdersViewTable extends SupabaseTable<HeatmapOrdersViewRow> {
  @override
  String get tableName => 'heatmap_orders_view';

  @override
  HeatmapOrdersViewRow createRow(Map<String, dynamic> data) =>
      HeatmapOrdersViewRow(data);
}

class HeatmapOrdersViewRow extends SupabaseDataRow {
  HeatmapOrdersViewRow(super.data);

  @override
  SupabaseTable get table => HeatmapOrdersViewTable();

  double? get ano => getField<double>('Año');
  set ano(double? value) => setField<double>('Año', value);

  double? get mes => getField<double>('Mes');
  set mes(double? value) => setField<double>('Mes', value);

  dynamic get ordersHeatmap => getField<dynamic>('orders_heatmap');
  set ordersHeatmap(dynamic value) =>
      setField<dynamic>('orders_heatmap', value);
}
