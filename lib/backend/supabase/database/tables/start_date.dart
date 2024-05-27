import '../database.dart';

class StartDateTable extends SupabaseTable<StartDateRow> {
  @override
  String get tableName => 'start_date';

  @override
  StartDateRow createRow(Map<String, dynamic> data) => StartDateRow(data);
}

class StartDateRow extends SupabaseDataRow {
  StartDateRow(super.data);

  @override
  SupabaseTable get table => StartDateTable();

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);
}
