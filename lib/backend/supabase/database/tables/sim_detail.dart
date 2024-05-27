import '../database.dart';

class SimDetailTable extends SupabaseTable<SimDetailRow> {
  @override
  String get tableName => 'sim_detail';

  @override
  SimDetailRow createRow(Map<String, dynamic> data) => SimDetailRow(data);
}

class SimDetailRow extends SupabaseDataRow {
  SimDetailRow(super.data);

  @override
  SupabaseTable get table => SimDetailTable();

  int get simDetailId => getField<int>('sim_detail_id')!;
  set simDetailId(int value) => setField<int>('sim_detail_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get phoneAssociation => getField<String>('phone_association')!;
  set phoneAssociation(String value) =>
      setField<String>('phone_association', value);

  String get dataPlan => getField<String>('data_plan')!;
  set dataPlan(String value) => setField<String>('data_plan', value);

  DateTime? get activationDate => getField<DateTime>('activation_date');
  set activationDate(DateTime? value) =>
      setField<DateTime>('activation_date', value);

  DateTime? get expirationDate => getField<DateTime>('expiration_date');
  set expirationDate(DateTime? value) =>
      setField<DateTime>('expiration_date', value);

  String get pin => getField<String>('pin')!;
  set pin(String value) => setField<String>('pin', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get imei => getField<String>('imei');
  set imei(String? value) => setField<String>('imei', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  int get inventoryProductFk => getField<int>('inventory_product_fk')!;
  set inventoryProductFk(int value) =>
      setField<int>('inventory_product_fk', value);

  String? get sapId => getField<String>('sap_id');
  set sapId(String? value) => setField<String>('sap_id', value);

  int? get simCarrierFk => getField<int>('sim_carrier_fk');
  set simCarrierFk(int? value) => setField<int>('sim_carrier_fk', value);

  String? get pukCode => getField<String>('puk_code');
  set pukCode(String? value) => setField<String>('puk_code', value);
}
