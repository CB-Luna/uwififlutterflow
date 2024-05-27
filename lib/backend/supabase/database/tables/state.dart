import '../database.dart';

class StateTable extends SupabaseTable<StateRow> {
  @override
  String get tableName => 'state';

  @override
  StateRow createRow(Map<String, dynamic> data) => StateRow(data);
}

class StateRow extends SupabaseDataRow {
  StateRow(super.data);

  @override
  SupabaseTable get table => StateTable();

  int get stateId => getField<int>('state_id')!;
  set stateId(int value) => setField<int>('state_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get code => getField<String>('code')!;
  set code(String value) => setField<String>('code', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
