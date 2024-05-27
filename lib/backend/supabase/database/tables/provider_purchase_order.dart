import '../database.dart';

class ProviderPurchaseOrderTable
    extends SupabaseTable<ProviderPurchaseOrderRow> {
  @override
  String get tableName => 'provider_purchase_order';

  @override
  ProviderPurchaseOrderRow createRow(Map<String, dynamic> data) =>
      ProviderPurchaseOrderRow(data);
}

class ProviderPurchaseOrderRow extends SupabaseDataRow {
  ProviderPurchaseOrderRow(super.data);

  @override
  SupabaseTable get table => ProviderPurchaseOrderTable();

  int get providerPurchaseOrderId =>
      getField<int>('provider_purchase_order_id')!;
  set providerPurchaseOrderId(int value) =>
      setField<int>('provider_purchase_order_id', value);

  int get providerFk => getField<int>('provider_fk')!;
  set providerFk(int value) => setField<int>('provider_fk', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get createdBy => getField<int>('created_by')!;
  set createdBy(int value) => setField<int>('created_by', value);

  double get subtotal => getField<double>('subtotal')!;
  set subtotal(double value) => setField<double>('subtotal', value);

  double get tax => getField<double>('tax')!;
  set tax(double value) => setField<double>('tax', value);

  double get total => getField<double>('total')!;
  set total(double value) => setField<double>('total', value);

  int get orderStatusFk => getField<int>('order_status_fk')!;
  set orderStatusFk(int value) => setField<int>('order_status_fk', value);
}
