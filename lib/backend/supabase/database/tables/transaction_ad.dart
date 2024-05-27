import '../database.dart';

class TransactionAdTable extends SupabaseTable<TransactionAdRow> {
  @override
  String get tableName => 'transaction_ad';

  @override
  TransactionAdRow createRow(Map<String, dynamic> data) =>
      TransactionAdRow(data);
}

class TransactionAdRow extends SupabaseDataRow {
  TransactionAdRow(super.data);

  @override
  SupabaseTable get table => TransactionAdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dateTransaction => getField<DateTime>('date_transaction')!;
  set dateTransaction(DateTime value) =>
      setField<DateTime>('date_transaction', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get adId => getField<int>('ad_id');
  set adId(int? value) => setField<int>('ad_id', value);

  int? get pointsAward => getField<int>('points_award');
  set pointsAward(int? value) => setField<int>('points_award', value);

  int? get percentageAd => getField<int>('percentage_ad');
  set percentageAd(int? value) => setField<int>('percentage_ad', value);

  int? get timeView => getField<int>('time_view');
  set timeView(int? value) => setField<int>('time_view', value);
}
