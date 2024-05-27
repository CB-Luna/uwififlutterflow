import '../database.dart';

class ProviderPurchaseOrderProductTable
    extends SupabaseTable<ProviderPurchaseOrderProductRow> {
  @override
  String get tableName => 'provider_purchase_order_product';

  @override
  ProviderPurchaseOrderProductRow createRow(Map<String, dynamic> data) =>
      ProviderPurchaseOrderProductRow(data);
}

class ProviderPurchaseOrderProductRow extends SupabaseDataRow {
  ProviderPurchaseOrderProductRow(super.data);

  @override
  SupabaseTable get table => ProviderPurchaseOrderProductTable();

  int get providerPurchaseOrderProductId =>
      getField<int>('provider_purchase_order_product_id')!;
  set providerPurchaseOrderProductId(int value) =>
      setField<int>('provider_purchase_order_product_id', value);

  int get productFk => getField<int>('product_fk')!;
  set productFk(int value) => setField<int>('product_fk', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  int get providerPurchaseOrderFk =>
      getField<int>('provider_purchase_order_fk')!;
  set providerPurchaseOrderFk(int value) =>
      setField<int>('provider_purchase_order_fk', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  double get taxPerc => getField<double>('tax_perc')!;
  set taxPerc(double value) => setField<double>('tax_perc', value);

  double get total => getField<double>('total')!;
  set total(double value) => setField<double>('total', value);

  double? get notes => getField<double>('notes');
  set notes(double? value) => setField<double>('notes', value);
}
