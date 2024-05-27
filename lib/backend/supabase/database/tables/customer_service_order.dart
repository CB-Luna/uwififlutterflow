import '../database.dart';

class CustomerServiceOrderTable extends SupabaseTable<CustomerServiceOrderRow> {
  @override
  String get tableName => 'customer_service_order';

  @override
  CustomerServiceOrderRow createRow(Map<String, dynamic> data) =>
      CustomerServiceOrderRow(data);
}

class CustomerServiceOrderRow extends SupabaseDataRow {
  CustomerServiceOrderRow(super.data);

  @override
  SupabaseTable get table => CustomerServiceOrderTable();

  int get serviceOrderId => getField<int>('service_order_id')!;
  set serviceOrderId(int value) => setField<int>('service_order_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deliveredAt => getField<DateTime>('delivered_at');
  set deliveredAt(DateTime? value) => setField<DateTime>('delivered_at', value);

  DateTime? get paidAt => getField<DateTime>('paid_at');
  set paidAt(DateTime? value) => setField<DateTime>('paid_at', value);

  DateTime? get expectedDeliveryDay =>
      getField<DateTime>('expected_delivery_day');
  set expectedDeliveryDay(DateTime? value) =>
      setField<DateTime>('expected_delivery_day', value);

  DateTime? get deliveryDay => getField<DateTime>('delivery_day');
  set deliveryDay(DateTime? value) => setField<DateTime>('delivery_day', value);

  int? get orderStatusFk => getField<int>('order_status_fk');
  set orderStatusFk(int? value) => setField<int>('order_status_fk', value);
}
