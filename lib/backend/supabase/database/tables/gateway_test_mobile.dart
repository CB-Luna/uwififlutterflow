import '../database.dart';

class GatewayTestMobileTable extends SupabaseTable<GatewayTestMobileRow> {
  @override
  String get tableName => 'gateway_test_mobile';

  @override
  GatewayTestMobileRow createRow(Map<String, dynamic> data) =>
      GatewayTestMobileRow(data);
}

class GatewayTestMobileRow extends SupabaseDataRow {
  GatewayTestMobileRow(super.data);

  @override
  SupabaseTable get table => GatewayTestMobileTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get serialNo => getField<String>('serial_no')!;
  set serialNo(String value) => setField<String>('serial_no', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get brand => getField<String>('brand')!;
  set brand(String value) => setField<String>('brand', value);

  String get model => getField<String>('model')!;
  set model(String value) => setField<String>('model', value);

  int? get idSimsCardFkOne => getField<int>('id_sims_card_fk_one');
  set idSimsCardFkOne(int? value) =>
      setField<int>('id_sims_card_fk_one', value);

  int? get idSimsCardFkTwo => getField<int>('id_sims_card_fk_two');
  set idSimsCardFkTwo(int? value) =>
      setField<int>('id_sims_card_fk_two', value);
}
