import '../database.dart';

class InvoiceTable extends SupabaseTable<InvoiceRow> {
  @override
  String get tableName => 'invoice';

  @override
  InvoiceRow createRow(Map<String, dynamic> data) => InvoiceRow(data);
}

class InvoiceRow extends SupabaseDataRow {
  InvoiceRow(super.data);

  @override
  SupabaseTable get table => InvoiceTable();

  int get invoiceId => getField<int>('invoice_id')!;
  set invoiceId(int value) => setField<int>('invoice_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  String get invoiceNumber => getField<String>('invoice_number')!;
  set invoiceNumber(String value) => setField<String>('invoice_number', value);

  dynamic get customer => getField<dynamic>('customer');
  set customer(dynamic value) => setField<dynamic>('customer', value);

  dynamic get recurringServices => getField<dynamic>('recurring_services');
  set recurringServices(dynamic value) =>
      setField<dynamic>('recurring_services', value);

  dynamic get lastBillingPeriod => getField<dynamic>('last_billing_period');
  set lastBillingPeriod(dynamic value) =>
      setField<dynamic>('last_billing_period', value);

  dynamic get currentBillingPeriod =>
      getField<dynamic>('current_billing_period');
  set currentBillingPeriod(dynamic value) =>
      setField<dynamic>('current_billing_period', value);
}
