import '../database.dart';

class CustomerDashboardsTable extends SupabaseTable<CustomerDashboardsRow> {
  @override
  String get tableName => 'customer_dashboards';

  @override
  CustomerDashboardsRow createRow(Map<String, dynamic> data) =>
      CustomerDashboardsRow(data);
}

class CustomerDashboardsRow extends SupabaseDataRow {
  CustomerDashboardsRow(super.data);

  @override
  SupabaseTable get table => CustomerDashboardsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get customersTotals => getField<double>('customers_totals');
  set customersTotals(double? value) =>
      setField<double>('customers_totals', value);

  double? get activeTotals => getField<double>('active_totals');
  set activeTotals(double? value) => setField<double>('active_totals', value);

  double? get leadTotals => getField<double>('lead_totals');
  set leadTotals(double? value) => setField<double>('lead_totals', value);

  dynamic get newCustomersId => getField<dynamic>('new_customers_id');
  set newCustomersId(dynamic value) =>
      setField<dynamic>('new_customers_id', value);
}
