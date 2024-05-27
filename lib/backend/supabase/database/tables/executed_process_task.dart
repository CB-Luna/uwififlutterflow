import '../database.dart';

class ExecutedProcessTaskTable extends SupabaseTable<ExecutedProcessTaskRow> {
  @override
  String get tableName => 'executed_process_task';

  @override
  ExecutedProcessTaskRow createRow(Map<String, dynamic> data) =>
      ExecutedProcessTaskRow(data);
}

class ExecutedProcessTaskRow extends SupabaseDataRow {
  ExecutedProcessTaskRow(super.data);

  @override
  SupabaseTable get table => ExecutedProcessTaskTable();

  int get executedProcessTaskId => getField<int>('executed_process_task_id')!;
  set executedProcessTaskId(int value) =>
      setField<int>('executed_process_task_id', value);

  String get dagTaskId => getField<String>('dag_task_id')!;
  set dagTaskId(String value) => setField<String>('dag_task_id', value);

  DateTime get startedAt => getField<DateTime>('started_at')!;
  set startedAt(DateTime value) => setField<DateTime>('started_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);

  String get dagRunId => getField<String>('dag_run_id')!;
  set dagRunId(String value) => setField<String>('dag_run_id', value);
}
