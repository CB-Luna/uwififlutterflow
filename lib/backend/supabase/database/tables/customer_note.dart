import '../database.dart';

class CustomerNoteTable extends SupabaseTable<CustomerNoteRow> {
  @override
  String get tableName => 'customer_note';

  @override
  CustomerNoteRow createRow(Map<String, dynamic> data) => CustomerNoteRow(data);
}

class CustomerNoteRow extends SupabaseDataRow {
  CustomerNoteRow(super.data);

  @override
  SupabaseTable get table => CustomerNoteTable();

  int get noteId => getField<int>('note_id')!;
  set noteId(int value) => setField<int>('note_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);
}
