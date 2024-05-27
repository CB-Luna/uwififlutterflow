import '../database.dart';

class ServiceOrderActionTable extends SupabaseTable<ServiceOrderActionRow> {
  @override
  String get tableName => 'service_order_action';

  @override
  ServiceOrderActionRow createRow(Map<String, dynamic> data) =>
      ServiceOrderActionRow(data);
}

class ServiceOrderActionRow extends SupabaseDataRow {
  ServiceOrderActionRow(super.data);

  @override
  SupabaseTable get table => ServiceOrderActionTable();

  int get serviceOrderActionId => getField<int>('service_order_action_id')!;
  set serviceOrderActionId(int value) =>
      setField<int>('service_order_action_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get serviceOrderFk => getField<int>('service_order_fk')!;
  set serviceOrderFk(int value) => setField<int>('service_order_fk', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  int get orderStatusFk => getField<int>('order_status_fk')!;
  set orderStatusFk(int value) => setField<int>('order_status_fk', value);
}
