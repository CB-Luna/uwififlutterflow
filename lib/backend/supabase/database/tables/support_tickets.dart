import '../database.dart';

class SupportTicketsTable extends SupabaseTable<SupportTicketsRow> {
  @override
  String get tableName => 'support_tickets';

  @override
  SupportTicketsRow createRow(Map<String, dynamic> data) =>
      SupportTicketsRow(data);
}

class SupportTicketsRow extends SupabaseDataRow {
  SupportTicketsRow(super.data);

  @override
  SupabaseTable get table => SupportTicketsTable();

  int get ticketId => getField<int>('ticket_id')!;
  set ticketId(int value) => setField<int>('ticket_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get customerIdFk => getField<int>('customer_id_fk');
  set customerIdFk(int? value) => setField<int>('customer_id_fk', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get finishAt => getField<DateTime>('finish_at');
  set finishAt(DateTime? value) => setField<DateTime>('finish_at', value);

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);
}
