import '../database.dart';

class InventoryDashboardsTable extends SupabaseTable<InventoryDashboardsRow> {
  @override
  String get tableName => 'inventory_dashboards';

  @override
  InventoryDashboardsRow createRow(Map<String, dynamic> data) =>
      InventoryDashboardsRow(data);
}

class InventoryDashboardsRow extends SupabaseDataRow {
  InventoryDashboardsRow(super.data);

  @override
  SupabaseTable get table => InventoryDashboardsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get gatewayTotals => getField<double>('gateway_totals');
  set gatewayTotals(double? value) => setField<double>('gateway_totals', value);

  double? get gatewayActives => getField<double>('gateway_actives');
  set gatewayActives(double? value) =>
      setField<double>('gateway_actives', value);

  dynamic get gatewayLocation => getField<dynamic>('gateway_location');
  set gatewayLocation(dynamic value) =>
      setField<dynamic>('gateway_location', value);

  double? get simsTotal => getField<double>('sims_total');
  set simsTotal(double? value) => setField<double>('sims_total', value);

  double? get simsActives => getField<double>('sims_actives');
  set simsActives(double? value) => setField<double>('sims_actives', value);

  dynamic get simsLocation => getField<dynamic>('sims_location');
  set simsLocation(dynamic value) => setField<dynamic>('sims_location', value);

  double? get bundlesTotal => getField<double>('bundles_total');
  set bundlesTotal(double? value) => setField<double>('bundles_total', value);

  double? get bundlesActive => getField<double>('bundles_active');
  set bundlesActive(double? value) => setField<double>('bundles_active', value);

  dynamic get bundleLocation => getField<dynamic>('bundle_location');
  set bundleLocation(dynamic value) =>
      setField<dynamic>('bundle_location', value);
}
