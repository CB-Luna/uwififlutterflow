import '../database.dart';

class OrderTypeTable extends SupabaseTable<OrderTypeRow> {
  @override
  String get tableName => 'order_type';

  @override
  OrderTypeRow createRow(Map<String, dynamic> data) => OrderTypeRow(data);
}

class OrderTypeRow extends SupabaseDataRow {
  OrderTypeRow(super.data);

  @override
  SupabaseTable get table => OrderTypeTable();

  int get orderTypeId => getField<int>('order_type_id')!;
  set orderTypeId(int value) => setField<int>('order_type_id', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
