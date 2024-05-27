import '../database.dart';

class CreditCardTable extends SupabaseTable<CreditCardRow> {
  @override
  String get tableName => 'credit_card';

  @override
  CreditCardRow createRow(Map<String, dynamic> data) => CreditCardRow(data);
}

class CreditCardRow extends SupabaseDataRow {
  CreditCardRow(super.data);

  @override
  SupabaseTable get table => CreditCardTable();

  int get creditCardId => getField<int>('credit_card_id')!;
  set creditCardId(int value) => setField<int>('credit_card_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);

  String get expMonth => getField<String>('exp_month')!;
  set expMonth(String value) => setField<String>('exp_month', value);

  String get expYear => getField<String>('exp_year')!;
  set expYear(String value) => setField<String>('exp_year', value);
}
