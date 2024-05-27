import '../database.dart';

class OrderActionTable extends SupabaseTable<OrderActionRow> {
  @override
  String get tableName => 'order_action';

  @override
  OrderActionRow createRow(Map<String, dynamic> data) => OrderActionRow(data);
}

class OrderActionRow extends SupabaseDataRow {
  OrderActionRow(super.data);

  @override
  SupabaseTable get table => OrderActionTable();

  int get orderActionId => getField<int>('order_action_id')!;
  set orderActionId(int value) => setField<int>('order_action_id', value);

  int get orderFk => getField<int>('order_fk')!;
  set orderFk(int value) => setField<int>('order_fk', value);

  String? get startedBy => getField<String>('started_by');
  set startedBy(String? value) => setField<String>('started_by', value);

  String? get finishedBy => getField<String>('finished_by');
  set finishedBy(String? value) => setField<String>('finished_by', value);

  DateTime get startedAt => getField<DateTime>('started_at')!;
  set startedAt(DateTime value) => setField<DateTime>('started_at', value);

  DateTime? get finishedAt => getField<DateTime>('finished_at');
  set finishedAt(DateTime? value) => setField<DateTime>('finished_at', value);

  int get orderStatusFk => getField<int>('order_status_fk')!;
  set orderStatusFk(int value) => setField<int>('order_status_fk', value);
}
