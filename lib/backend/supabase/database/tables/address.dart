import '../database.dart';

class AddressTable extends SupabaseTable<AddressRow> {
  @override
  String get tableName => 'address';

  @override
  AddressRow createRow(Map<String, dynamic> data) => AddressRow(data);
}

class AddressRow extends SupabaseDataRow {
  AddressRow(super.data);

  @override
  SupabaseTable get table => AddressTable();

  int get addressId => getField<int>('address_id')!;
  set addressId(int value) => setField<int>('address_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get address1 => getField<String>('address_1')!;
  set address1(String value) => setField<String>('address_1', value);

  String get zipcode => getField<String>('zipcode')!;
  set zipcode(String value) => setField<String>('zipcode', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String? get address2 => getField<String>('address_2');
  set address2(String? value) => setField<String>('address_2', value);

  int get stateFk => getField<int>('state_fk')!;
  set stateFk(int value) => setField<int>('state_fk', value);

  String get country => getField<String>('country')!;
  set country(String value) => setField<String>('country', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);
}
