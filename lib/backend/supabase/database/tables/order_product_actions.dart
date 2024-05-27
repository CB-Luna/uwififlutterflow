import '../database.dart';

class OrderProductActionsTable extends SupabaseTable<OrderProductActionsRow> {
  @override
  String get tableName => 'order_product_actions';

  @override
  OrderProductActionsRow createRow(Map<String, dynamic> data) =>
      OrderProductActionsRow(data);
}

class OrderProductActionsRow extends SupabaseDataRow {
  OrderProductActionsRow(super.data);

  @override
  SupabaseTable get table => OrderProductActionsTable();

  int get orderProductActionsId => getField<int>('order_product_actions_id')!;
  set orderProductActionsId(int value) =>
      setField<int>('order_product_actions_id', value);

  int get orderProductFk => getField<int>('order_product_fk')!;
  set orderProductFk(int value) => setField<int>('order_product_fk', value);

  int get inventoryProductStatusFk =>
      getField<int>('inventory_product_status_fk')!;
  set inventoryProductStatusFk(int value) =>
      setField<int>('inventory_product_status_fk', value);

  int? get startedBy => getField<int>('started_by');
  set startedBy(int? value) => setField<int>('started_by', value);

  int? get finishedBy => getField<int>('finished_by');
  set finishedBy(int? value) => setField<int>('finished_by', value);

  DateTime get startedAt => getField<DateTime>('started_at')!;
  set startedAt(DateTime value) => setField<DateTime>('started_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);
}
