import '../database.dart';

class ExecutedProcessTable extends SupabaseTable<ExecutedProcessRow> {
  @override
  String get tableName => 'executed_process';

  @override
  ExecutedProcessRow createRow(Map<String, dynamic> data) =>
      ExecutedProcessRow(data);
}

class ExecutedProcessRow extends SupabaseDataRow {
  ExecutedProcessRow(super.data);

  @override
  SupabaseTable get table => ExecutedProcessTable();

  int get executedProcessId => getField<int>('executed_process_id')!;
  set executedProcessId(int value) =>
      setField<int>('executed_process_id', value);

  String get dagRunId => getField<String>('dag_run_id')!;
  set dagRunId(String value) => setField<String>('dag_run_id', value);

  String get currentTask => getField<String>('current_task')!;
  set currentTask(String value) => setField<String>('current_task', value);

  DateTime get startedAt => getField<DateTime>('started_at')!;
  set startedAt(DateTime value) => setField<DateTime>('started_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);

  String get dagId => getField<String>('dag_id')!;
  set dagId(String value) => setField<String>('dag_id', value);

  String get dagDescription => getField<String>('dag_description')!;
  set dagDescription(String value) =>
      setField<String>('dag_description', value);

  int? get orderFk => getField<int>('order_fk');
  set orderFk(int? value) => setField<int>('order_fk', value);

  dynamic get overrideField => getField<dynamic>('override');
  set overrideField(dynamic value) => setField<dynamic>('override', value);
}
