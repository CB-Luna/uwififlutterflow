import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(super.data);

  @override
  SupabaseTable get table => ProductTable();

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  int get providerFk => getField<int>('provider_fk')!;
  set providerFk(int value) => setField<int>('provider_fk', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String get productCode => getField<String>('product_code')!;
  set productCode(String value) => setField<String>('product_code', value);

  int get productTypeFk => getField<int>('product_type_fk')!;
  set productTypeFk(int value) => setField<int>('product_type_fk', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  int get createdBy => getField<int>('created_by')!;
  set createdBy(int value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  bool get visible => getField<bool>('visible')!;
  set visible(bool value) => setField<bool>('visible', value);
}
