import '../database.dart';

class OrdersDashboardsTable extends SupabaseTable<OrdersDashboardsRow> {
  @override
  String get tableName => 'orders_dashboards';

  @override
  OrdersDashboardsRow createRow(Map<String, dynamic> data) =>
      OrdersDashboardsRow(data);
}

class OrdersDashboardsRow extends SupabaseDataRow {
  OrdersDashboardsRow(super.data);

  @override
  SupabaseTable get table => OrdersDashboardsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get ordersTotals => getField<int>('orders_totals');
  set ordersTotals(int? value) => setField<int>('orders_totals', value);

  double? get testingTotals => getField<double>('testing_totals');
  set testingTotals(double? value) => setField<double>('testing_totals', value);

  double? get packagingTotals => getField<double>('packaging_totals');
  set packagingTotals(double? value) =>
      setField<double>('packaging_totals', value);

  double? get deliveringTotals => getField<double>('delivering_totals');
  set deliveringTotals(double? value) =>
      setField<double>('delivering_totals', value);

  double? get provisioningTotals => getField<double>('provisioning_totals');
  set provisioningTotals(double? value) =>
      setField<double>('provisioning_totals', value);

  dynamic get ordersByClient => getField<dynamic>('orders_by_client');
  set ordersByClient(dynamic value) =>
      setField<dynamic>('orders_by_client', value);
}
