import '../database.dart';

class PaymentTable extends SupabaseTable<PaymentRow> {
  @override
  String get tableName => 'payment';

  @override
  PaymentRow createRow(Map<String, dynamic> data) => PaymentRow(data);
}

class PaymentRow extends SupabaseDataRow {
  PaymentRow(super.data);

  @override
  SupabaseTable get table => PaymentTable();

  int get paymentId => getField<int>('payment_id')!;
  set paymentId(int value) => setField<int>('payment_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get actionCode => getField<String>('action_code')!;
  set actionCode(String value) => setField<String>('action_code', value);

  String? get approval => getField<String>('approval');
  set approval(String? value) => setField<String>('approval', value);

  String get response => getField<String>('response')!;
  set response(String value) => setField<String>('response', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get errorMessage => getField<String>('error_message');
  set errorMessage(String? value) => setField<String>('error_message', value);

  String get ippayTransactionId => getField<String>('ippay_transaction_id')!;
  set ippayTransactionId(String value) =>
      setField<String>('ippay_transaction_id', value);

  int? get creditCardFk => getField<int>('credit_card_fk');
  set creditCardFk(int? value) => setField<int>('credit_card_fk', value);

  int? get customerTransactionFk => getField<int>('customer_transaction_fk');
  set customerTransactionFk(int? value) =>
      setField<int>('customer_transaction_fk', value);

  int get customerFk => getField<int>('customer_fk')!;
  set customerFk(int value) => setField<int>('customer_fk', value);
}
