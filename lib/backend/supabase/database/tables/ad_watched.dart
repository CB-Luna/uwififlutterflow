import '../database.dart';

class AdWatchedTable extends SupabaseTable<AdWatchedRow> {
  @override
  String get tableName => 'ad_watched';

  @override
  AdWatchedRow createRow(Map<String, dynamic> data) => AdWatchedRow(data);
}

class AdWatchedRow extends SupabaseDataRow {
  AdWatchedRow(super.data);

  @override
  SupabaseTable get table => AdWatchedTable();

  int get adWatchedId => getField<int>('ad_watched_id')!;
  set adWatchedId(int value) => setField<int>('ad_watched_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get adFk => getField<int>('ad_fk')!;
  set adFk(int value) => setField<int>('ad_fk', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  int get secondsWatched => getField<int>('seconds_watched')!;
  set secondsWatched(int value) => setField<int>('seconds_watched', value);

  int get pointsEarned => getField<int>('points_earned')!;
  set pointsEarned(int value) => setField<int>('points_earned', value);
}
