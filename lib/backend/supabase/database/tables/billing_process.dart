import '../database.dart';

class BillingProcessTable extends SupabaseTable<BillingProcessRow> {
  @override
  String get tableName => 'billing_process';

  @override
  BillingProcessRow createRow(Map<String, dynamic> data) =>
      BillingProcessRow(data);
}

class BillingProcessRow extends SupabaseDataRow {
  BillingProcessRow(super.data);

  @override
  SupabaseTable get table => BillingProcessTable();

  int get billingProcessId => getField<int>('billing_process_id')!;
  set billingProcessId(int value) => setField<int>('billing_process_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  int get customersBilled => getField<int>('customers_billed')!;
  set customersBilled(int value) => setField<int>('customers_billed', value);

  double get totalBilled => getField<double>('total_billed')!;
  set totalBilled(double value) => setField<double>('total_billed', value);

  DateTime get billingDate => getField<DateTime>('billing_date')!;
  set billingDate(DateTime value) => setField<DateTime>('billing_date', value);

  List<int> get customers => getListField<int>('customers');
  set customers(List<int> value) => setListField<int>('customers', value);
}
