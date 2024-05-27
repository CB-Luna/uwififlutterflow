import '../database.dart';

class BatchDocumentTable extends SupabaseTable<BatchDocumentRow> {
  @override
  String get tableName => 'batch_document';

  @override
  BatchDocumentRow createRow(Map<String, dynamic> data) =>
      BatchDocumentRow(data);
}

class BatchDocumentRow extends SupabaseDataRow {
  BatchDocumentRow(super.data);

  @override
  SupabaseTable get table => BatchDocumentTable();

  int get batchDocumentId => getField<int>('batch_document_id')!;
  set batchDocumentId(int value) => setField<int>('batch_document_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userName => getField<String>('user_name')!;
  set userName(String value) => setField<String>('user_name', value);

  int get sequentialId => getField<int>('sequential_id')!;
  set sequentialId(int value) => setField<int>('sequential_id', value);

  String get document => getField<String>('document')!;
  set document(String value) => setField<String>('document', value);

  int get productTypeFk => getField<int>('product_type_fk')!;
  set productTypeFk(int value) => setField<int>('product_type_fk', value);
}
