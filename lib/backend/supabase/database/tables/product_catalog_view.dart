import '../database.dart';

class ProductCatalogViewTable extends SupabaseTable<ProductCatalogViewRow> {
  @override
  String get tableName => 'product_catalog_view';

  @override
  ProductCatalogViewRow createRow(Map<String, dynamic> data) =>
      ProductCatalogViewRow(data);
}

class ProductCatalogViewRow extends SupabaseDataRow {
  ProductCatalogViewRow(super.data);

  @override
  SupabaseTable get table => ProductCatalogViewTable();

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get providerFk => getField<int>('provider_fk');
  set providerFk(int? value) => setField<int>('provider_fk', value);

  dynamic get provider => getField<dynamic>('provider');
  set provider(dynamic value) => setField<dynamic>('provider', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get productCode => getField<String>('product_code');
  set productCode(String? value) => setField<String>('product_code', value);

  int? get productTypeFk => getField<int>('product_type_fk');
  set productTypeFk(int? value) => setField<int>('product_type_fk', value);

  dynamic get productType => getField<dynamic>('product_type');
  set productType(dynamic value) => setField<dynamic>('product_type', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
