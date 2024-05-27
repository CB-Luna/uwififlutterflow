import '../database.dart';

class DashboardsViewTable extends SupabaseTable<DashboardsViewRow> {
  @override
  String get tableName => 'dashboards_view';

  @override
  DashboardsViewRow createRow(Map<String, dynamic> data) =>
      DashboardsViewRow(data);
}

class DashboardsViewRow extends SupabaseDataRow {
  DashboardsViewRow(super.data);

  @override
  SupabaseTable get table => DashboardsViewTable();

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  dynamic get marcadores => getField<dynamic>('marcadores');
  set marcadores(dynamic value) => setField<dynamic>('marcadores', value);
}
