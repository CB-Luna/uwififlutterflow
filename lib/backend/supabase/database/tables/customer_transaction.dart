import '../database.dart';

class CustomerTransactionTable extends SupabaseTable<CustomerTransactionRow> {
  @override
  String get tableName => 'customer_transaction';

  @override
  CustomerTransactionRow createRow(Map<String, dynamic> data) =>
      CustomerTransactionRow(data);
}

class CustomerTransactionRow extends SupabaseDataRow {
  CustomerTransactionRow(super.data);

  @override
  SupabaseTable get table => CustomerTransactionTable();

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get transactionTypeFk => getField<int>('transaction_type_fk')!;
  set transactionTypeFk(int value) =>
      setField<int>('transaction_type_fk', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  int get transactionId => getField<int>('transaction_id')!;
  set transactionId(int value) => setField<int>('transaction_id', value);

  int? get serviceFk => getField<int>('service_fk');
  set serviceFk(int? value) => setField<int>('service_fk', value);
}
