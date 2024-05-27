import '../database.dart';

class TransactionTypeTable extends SupabaseTable<TransactionTypeRow> {
  @override
  String get tableName => 'transaction_type';

  @override
  TransactionTypeRow createRow(Map<String, dynamic> data) =>
      TransactionTypeRow(data);
}

class TransactionTypeRow extends SupabaseDataRow {
  TransactionTypeRow(super.data);

  @override
  SupabaseTable get table => TransactionTypeTable();

  int get transactionTypeId => getField<int>('transaction_type_id')!;
  set transactionTypeId(int value) =>
      setField<int>('transaction_type_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);
}
