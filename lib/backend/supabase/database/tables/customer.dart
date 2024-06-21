import '../database.dart';

class CustomerTable extends SupabaseTable<CustomerRow> {
  @override
  String get tableName => 'customer';

  @override
  CustomerRow createRow(Map<String, dynamic> data) => CustomerRow(data);
}

class CustomerRow extends SupabaseDataRow {
  CustomerRow(super.data);

  @override
  SupabaseTable get table => CustomerTable();

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get mobilePhone => getField<String>('mobile_phone')!;
  set mobilePhone(String value) => setField<String>('mobile_phone', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);
}
