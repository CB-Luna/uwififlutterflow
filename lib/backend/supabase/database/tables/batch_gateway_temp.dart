import '../database.dart';

class BatchGatewayTempTable extends SupabaseTable<BatchGatewayTempRow> {
  @override
  String get tableName => 'batch_gateway_temp';

  @override
  BatchGatewayTempRow createRow(Map<String, dynamic> data) =>
      BatchGatewayTempRow(data);
}

class BatchGatewayTempRow extends SupabaseDataRow {
  BatchGatewayTempRow(super.data);

  @override
  SupabaseTable get table => BatchGatewayTempTable();

  int get batchGatewayTempId => getField<int>('batch_gateway_temp_id')!;
  set batchGatewayTempId(int value) =>
      setField<int>('batch_gateway_temp_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get wifiKey => getField<String>('wifi_key')!;
  set wifiKey(String value) => setField<String>('wifi_key', value);

  String get imei => getField<String>('imei')!;
  set imei(String value) => setField<String>('imei', value);

  String get mac => getField<String>('mac')!;
  set mac(String value) => setField<String>('mac', value);

  String get serialNumber => getField<String>('serial_number')!;
  set serialNumber(String value) => setField<String>('serial_number', value);

  int get batchDocumentFk => getField<int>('batch_document_fk')!;
  set batchDocumentFk(int value) => setField<int>('batch_document_fk', value);

  int? get batchStatusFk => getField<int>('batch_status_fk');
  set batchStatusFk(int? value) => setField<int>('batch_status_fk', value);
}
