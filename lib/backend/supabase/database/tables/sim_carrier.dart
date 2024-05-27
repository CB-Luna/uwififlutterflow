import '../database.dart';

class SimCarrierTable extends SupabaseTable<SimCarrierRow> {
  @override
  String get tableName => 'sim_carrier';

  @override
  SimCarrierRow createRow(Map<String, dynamic> data) => SimCarrierRow(data);
}

class SimCarrierRow extends SupabaseDataRow {
  SimCarrierRow(super.data);

  @override
  SupabaseTable get table => SimCarrierTable();

  int get simCarrierId => getField<int>('sim_carrier_id')!;
  set simCarrierId(int value) => setField<int>('sim_carrier_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
