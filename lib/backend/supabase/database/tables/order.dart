import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(super.data);

  @override
  SupabaseTable get table => OrderTable();

  int get orderId => getField<int>('order_id')!;
  set orderId(int value) => setField<int>('order_id', value);

  int get orderTypeFk => getField<int>('order_type_fk')!;
  set orderTypeFk(int value) => setField<int>('order_type_fk', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  int? get customerFk => getField<int>('customer_fk');
  set customerFk(int? value) => setField<int>('customer_fk', value);
}
