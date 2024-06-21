import '../database.dart';

class TokenTable extends SupabaseTable<TokenRow> {
  @override
  String get tableName => 'token';

  @override
  TokenRow createRow(Map<String, dynamic> data) => TokenRow(data);
}

class TokenRow extends SupabaseDataRow {
  TokenRow(super.data);

  @override
  SupabaseTable get table => TokenTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get loginToken => getField<String>('login_token');
  set loginToken(String? value) => setField<String>('login_token', value);
}
