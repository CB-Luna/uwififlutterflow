import '../database.dart';

class ProviderInvoiceTable extends SupabaseTable<ProviderInvoiceRow> {
  @override
  String get tableName => 'provider_invoice';

  @override
  ProviderInvoiceRow createRow(Map<String, dynamic> data) =>
      ProviderInvoiceRow(data);
}

class ProviderInvoiceRow extends SupabaseDataRow {
  ProviderInvoiceRow(super.data);

  @override
  SupabaseTable get table => ProviderInvoiceTable();

  int get providerInvoiceId => getField<int>('provider_invoice_id')!;
  set providerInvoiceId(int value) =>
      setField<int>('provider_invoice_id', value);

  int? get providerPurchaseOrderFk =>
      getField<int>('provider_purchase_order_fk');
  set providerPurchaseOrderFk(int? value) =>
      setField<int>('provider_purchase_order_fk', value);

  String get invoiceNumber => getField<String>('invoice_number')!;
  set invoiceNumber(String value) => setField<String>('invoice_number', value);

  DateTime get invoiceDate => getField<DateTime>('invoice_date')!;
  set invoiceDate(DateTime value) => setField<DateTime>('invoice_date', value);

  double get subtotal => getField<double>('subtotal')!;
  set subtotal(double value) => setField<double>('subtotal', value);

  double get taxPercent => getField<double>('tax_percent')!;
  set taxPercent(double value) => setField<double>('tax_percent', value);

  double get taxAmount => getField<double>('tax_amount')!;
  set taxAmount(double value) => setField<double>('tax_amount', value);

  double get total => getField<double>('total')!;
  set total(double value) => setField<double>('total', value);

  int get createdBy => getField<int>('created_by')!;
  set createdBy(int value) => setField<int>('created_by', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get providerFk => getField<int>('provider_fk')!;
  set providerFk(int value) => setField<int>('provider_fk', value);
}
