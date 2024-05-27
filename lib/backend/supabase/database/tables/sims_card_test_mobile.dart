import '../database.dart';

class SimsCardTestMobileTable extends SupabaseTable<SimsCardTestMobileRow> {
  @override
  String get tableName => 'sims_card_test_mobile';

  @override
  SimsCardTestMobileRow createRow(Map<String, dynamic> data) =>
      SimsCardTestMobileRow(data);
}

class SimsCardTestMobileRow extends SupabaseDataRow {
  SimsCardTestMobileRow(super.data);

  @override
  SupabaseTable get table => SimsCardTestMobileTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get imei => getField<String>('imei')!;
  set imei(String value) => setField<String>('imei', value);

  String get serialNo => getField<String>('serial_no')!;
  set serialNo(String value) => setField<String>('serial_no', value);

  String get brand => getField<String>('brand')!;
  set brand(String value) => setField<String>('brand', value);

  String get model => getField<String>('model')!;
  set model(String value) => setField<String>('model', value);
}
