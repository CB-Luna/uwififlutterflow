import '../database.dart';

class CustomerServiceTable extends SupabaseTable<CustomerServiceRow> {
  @override
  String get tableName => 'customer_service';

  @override
  CustomerServiceRow createRow(Map<String, dynamic> data) =>
      CustomerServiceRow(data);
}

class CustomerServiceRow extends SupabaseDataRow {
  CustomerServiceRow(super.data);

  @override
  SupabaseTable get table => CustomerServiceTable();

  int get customerServiceId => getField<int>('customer_service_id')!;
  set customerServiceId(int value) =>
      setField<int>('customer_service_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  int get serviceFk => getField<int>('service_fk')!;
  set serviceFk(int value) => setField<int>('service_fk', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);
}
