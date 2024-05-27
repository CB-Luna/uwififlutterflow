import '../database.dart';

class CustomerTicketTable extends SupabaseTable<CustomerTicketRow> {
  @override
  String get tableName => 'customer_ticket';

  @override
  CustomerTicketRow createRow(Map<String, dynamic> data) =>
      CustomerTicketRow(data);
}

class CustomerTicketRow extends SupabaseDataRow {
  CustomerTicketRow(super.data);

  @override
  SupabaseTable get table => CustomerTicketTable();

  int get customerTicketId => getField<int>('customer_ticket_id')!;
  set customerTicketId(int value) => setField<int>('customer_ticket_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  int get ticketFk => getField<int>('ticket_fk')!;
  set ticketFk(int value) => setField<int>('ticket_fk', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
