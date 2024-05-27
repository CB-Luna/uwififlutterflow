import '../database.dart';

class BatchSimCardTempTable extends SupabaseTable<BatchSimCardTempRow> {
  @override
  String get tableName => 'batch_sim_card_temp';

  @override
  BatchSimCardTempRow createRow(Map<String, dynamic> data) =>
      BatchSimCardTempRow(data);
}

class BatchSimCardTempRow extends SupabaseDataRow {
  BatchSimCardTempRow(super.data);

  @override
  SupabaseTable get table => BatchSimCardTempTable();

  int get batchSimCardTempId => getField<int>('batch_sim_card_temp_id')!;
  set batchSimCardTempId(int value) =>
      setField<int>('batch_sim_card_temp_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get batchDocumentFk => getField<int>('batch_document_fk')!;
  set batchDocumentFk(int value) => setField<int>('batch_document_fk', value);

  int get batchStatusFk => getField<int>('batch_status_fk')!;
  set batchStatusFk(int value) => setField<int>('batch_status_fk', value);

  String? get sapId => getField<String>('sap_id');
  set sapId(String? value) => setField<String>('sap_id', value);

  String get imei => getField<String>('imei')!;
  set imei(String value) => setField<String>('imei', value);

  String? get pukCode => getField<String>('puk_code');
  set pukCode(String? value) => setField<String>('puk_code', value);
}
