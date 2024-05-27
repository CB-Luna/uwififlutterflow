import '../database.dart';

class CustomerStatementTable extends SupabaseTable<CustomerStatementRow> {
  @override
  String get tableName => 'customer_statement';

  @override
  CustomerStatementRow createRow(Map<String, dynamic> data) =>
      CustomerStatementRow(data);
}

class CustomerStatementRow extends SupabaseDataRow {
  CustomerStatementRow(super.data);

  @override
  SupabaseTable get table => CustomerStatementTable();

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  double get closingBalance => getField<double>('closing_balance')!;
  set closingBalance(double value) =>
      setField<double>('closing_balance', value);

  double get totalCredit => getField<double>('total_credit')!;
  set totalCredit(double value) => setField<double>('total_credit', value);

  double get totalDebit => getField<double>('total_debit')!;
  set totalDebit(double value) => setField<double>('total_debit', value);
}
