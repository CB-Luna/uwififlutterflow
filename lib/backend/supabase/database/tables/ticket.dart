import '../database.dart';

class TicketTable extends SupabaseTable<TicketRow> {
  @override
  String get tableName => 'ticket';

  @override
  TicketRow createRow(Map<String, dynamic> data) => TicketRow(data);
}

class TicketRow extends SupabaseDataRow {
  TicketRow(super.data);

  @override
  SupabaseTable get table => TicketTable();

  int get ticketId => getField<int>('ticket_id')!;
  set ticketId(int value) => setField<int>('ticket_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);
}
