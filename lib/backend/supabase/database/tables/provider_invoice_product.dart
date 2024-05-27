import '../database.dart';

class ProviderInvoiceProductTable
    extends SupabaseTable<ProviderInvoiceProductRow> {
  @override
  String get tableName => 'provider_invoice_product';

  @override
  ProviderInvoiceProductRow createRow(Map<String, dynamic> data) =>
      ProviderInvoiceProductRow(data);
}

class ProviderInvoiceProductRow extends SupabaseDataRow {
  ProviderInvoiceProductRow(super.data);

  @override
  SupabaseTable get table => ProviderInvoiceProductTable();

  int get providerInvoiceProductId =>
      getField<int>('provider_invoice_product_id')!;
  set providerInvoiceProductId(int value) =>
      setField<int>('provider_invoice_product_id', value);

  int get providerInvoiceFk => getField<int>('provider_invoice_fk')!;
  set providerInvoiceFk(int value) =>
      setField<int>('provider_invoice_fk', value);

  int get productFk => getField<int>('product_fk')!;
  set productFk(int value) => setField<int>('product_fk', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  double get subtotal => getField<double>('subtotal')!;
  set subtotal(double value) => setField<double>('subtotal', value);

  double get taxPercent => getField<double>('tax_percent')!;
  set taxPercent(double value) => setField<double>('tax_percent', value);

  double get taxAmount => getField<double>('tax_amount')!;
  set taxAmount(double value) => setField<double>('tax_amount', value);

  double get discountPrecent => getField<double>('discount_precent')!;
  set discountPrecent(double value) =>
      setField<double>('discount_precent', value);

  double get discountAmount => getField<double>('discount_amount')!;
  set discountAmount(double value) =>
      setField<double>('discount_amount', value);

  double get total => getField<double>('total')!;
  set total(double value) => setField<double>('total', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);
}
