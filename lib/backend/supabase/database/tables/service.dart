import '../database.dart';

class ServiceTable extends SupabaseTable<ServiceRow> {
  @override
  String get tableName => 'service';

  @override
  ServiceRow createRow(Map<String, dynamic> data) => ServiceRow(data);
}

class ServiceRow extends SupabaseDataRow {
  ServiceRow(super.data);

  @override
  SupabaseTable get table => ServiceTable();

  int get serviceId => getField<int>('service_id')!;
  set serviceId(int value) => setField<int>('service_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get value => getField<double>('value')!;
  set value(double value) => setField<double>('value', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get transactionTypeFk => getField<int>('transaction_type_fk')!;
  set transactionTypeFk(int value) =>
      setField<int>('transaction_type_fk', value);
}
