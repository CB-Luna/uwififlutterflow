import '../database.dart';

class RecentActivityTable extends SupabaseTable<RecentActivityRow> {
  @override
  String get tableName => 'recent_activity';

  @override
  RecentActivityRow createRow(Map<String, dynamic> data) =>
      RecentActivityRow(data);
}

class RecentActivityRow extends SupabaseDataRow {
  RecentActivityRow(super.data);

  @override
  SupabaseTable get table => RecentActivityTable();

  int get recentActivityId => getField<int>('recent_activity_id')!;
  set recentActivityId(int value) => setField<int>('recent_activity_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  String get activity => getField<String>('activity')!;
  set activity(String value) => setField<String>('activity', value);
}
