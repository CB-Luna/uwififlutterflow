import '../database.dart';

class FullCustomerTable extends SupabaseTable<FullCustomerRow> {
  @override
  String get tableName => 'full_customer';

  @override
  FullCustomerRow createRow(Map<String, dynamic> data) => FullCustomerRow(data);
}

class FullCustomerRow extends SupabaseDataRow {
  FullCustomerRow(super.data);

  @override
  SupabaseTable get table => FullCustomerTable();

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get mobilePhone => getField<String>('mobile_phone');
  set mobilePhone(String? value) => setField<String>('mobile_phone', value);

  dynamic get billingAddress => getField<dynamic>('billing_address');
  set billingAddress(dynamic value) =>
      setField<dynamic>('billing_address', value);

  dynamic get physicalAddress => getField<dynamic>('physical_address');
  set physicalAddress(dynamic value) =>
      setField<dynamic>('physical_address', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);
}
