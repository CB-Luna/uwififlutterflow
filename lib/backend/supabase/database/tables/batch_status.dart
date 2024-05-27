import '../database.dart';

class BatchStatusTable extends SupabaseTable<BatchStatusRow> {
  @override
  String get tableName => 'batch_status';

  @override
  BatchStatusRow createRow(Map<String, dynamic> data) => BatchStatusRow(data);
}

class BatchStatusRow extends SupabaseDataRow {
  BatchStatusRow(super.data);

  @override
  SupabaseTable get table => BatchStatusTable();

  int get batchStatusId => getField<int>('batch_status_id')!;
  set batchStatusId(int value) => setField<int>('batch_status_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
