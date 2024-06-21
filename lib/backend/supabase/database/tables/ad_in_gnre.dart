import '../database.dart';

class AdInGnreTable extends SupabaseTable<AdInGnreRow> {
  @override
  String get tableName => 'ad_in_gnre';

  @override
  AdInGnreRow createRow(Map<String, dynamic> data) => AdInGnreRow(data);
}

class AdInGnreRow extends SupabaseDataRow {
  AdInGnreRow(super.data);

  @override
  SupabaseTable get table => AdInGnreTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get adId => getField<int>('ad_id')!;
  set adId(int value) => setField<int>('ad_id', value);

  int get gnreId => getField<int>('gnre_id')!;
  set gnreId(int value) => setField<int>('gnre_id', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
