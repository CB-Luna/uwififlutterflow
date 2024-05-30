import '../database.dart';

class CustomerServiceHistoryTable
    extends SupabaseTable<CustomerServiceHistoryRow> {
  @override
  String get tableName => 'customer_service_history';

  @override
  CustomerServiceHistoryRow createRow(Map<String, dynamic> data) =>
      CustomerServiceHistoryRow(data);
}

class CustomerServiceHistoryRow extends SupabaseDataRow {
  CustomerServiceHistoryRow(super.data);

  @override
  SupabaseTable get table => CustomerServiceHistoryTable();

  int get customerServiceId => getField<int>('customer_service_id')!;
  set customerServiceId(int value) =>
      setField<int>('customer_service_id', value);

  DateTime get transferDate => getField<DateTime>('transfer_date')!;
  set transferDate(DateTime value) =>
      setField<DateTime>('transfer_date', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  int get serviceFk => getField<int>('service_fk')!;
  set serviceFk(int value) => setField<int>('service_fk', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);
}
