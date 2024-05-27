import '../database.dart';

class ProductTypeTable extends SupabaseTable<ProductTypeRow> {
  @override
  String get tableName => 'product_type';

  @override
  ProductTypeRow createRow(Map<String, dynamic> data) => ProductTypeRow(data);
}

class ProductTypeRow extends SupabaseDataRow {
  ProductTypeRow(super.data);

  @override
  SupabaseTable get table => ProductTypeTable();

  int get productTypeId => getField<int>('product_type_id')!;
  set productTypeId(int value) => setField<int>('product_type_id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
