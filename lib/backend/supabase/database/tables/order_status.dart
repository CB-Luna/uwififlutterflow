import '../database.dart';

class OrderStatusTable extends SupabaseTable<OrderStatusRow> {
  @override
  String get tableName => 'order_status';

  @override
  OrderStatusRow createRow(Map<String, dynamic> data) => OrderStatusRow(data);
}

class OrderStatusRow extends SupabaseDataRow {
  OrderStatusRow(super.data);

  @override
  SupabaseTable get table => OrderStatusTable();

  int get orderStatusId => getField<int>('order_status_id')!;
  set orderStatusId(int value) => setField<int>('order_status_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);
}
