import '../database.dart';

class OperatorTable extends SupabaseTable<OperatorRow> {
  @override
  String get tableName => 'operator';

  @override
  OperatorRow createRow(Map<String, dynamic> data) => OperatorRow(data);
}

class OperatorRow extends SupabaseDataRow {
  OperatorRow(super.data);

  @override
  SupabaseTable get table => OperatorTable();

  int get operatorId => getField<int>('operator_id')!;
  set operatorId(int value) => setField<int>('operator_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
