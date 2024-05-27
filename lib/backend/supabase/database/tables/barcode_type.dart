import '../database.dart';

class BarcodeTypeTable extends SupabaseTable<BarcodeTypeRow> {
  @override
  String get tableName => 'barcode_type';

  @override
  BarcodeTypeRow createRow(Map<String, dynamic> data) => BarcodeTypeRow(data);
}

class BarcodeTypeRow extends SupabaseDataRow {
  BarcodeTypeRow(super.data);

  @override
  SupabaseTable get table => BarcodeTypeTable();

  int get barcodeTypeId => getField<int>('barcode_type_id')!;
  set barcodeTypeId(int value) => setField<int>('barcode_type_id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
