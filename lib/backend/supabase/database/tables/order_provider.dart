import '../database.dart';

class OrderProviderTable extends SupabaseTable<OrderProviderRow> {
  @override
  String get tableName => 'order_provider';

  @override
  OrderProviderRow createRow(Map<String, dynamic> data) =>
      OrderProviderRow(data);
}

class OrderProviderRow extends SupabaseDataRow {
  OrderProviderRow(super.data);

  @override
  SupabaseTable get table => OrderProviderTable();

  int get orderProviderId => getField<int>('order_provider_id')!;
  set orderProviderId(int value) => setField<int>('order_provider_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get orderFk => getField<int>('order_fk')!;
  set orderFk(int value) => setField<int>('order_fk', value);

  int get providerFk => getField<int>('provider_fk')!;
  set providerFk(int value) => setField<int>('provider_fk', value);

  bool get selected => getField<bool>('selected')!;
  set selected(bool value) => setField<bool>('selected', value);
}
