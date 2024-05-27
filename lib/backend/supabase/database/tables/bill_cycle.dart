import '../database.dart';

class BillCycleTable extends SupabaseTable<BillCycleRow> {
  @override
  String get tableName => 'bill_cycle';

  @override
  BillCycleRow createRow(Map<String, dynamic> data) => BillCycleRow(data);
}

class BillCycleRow extends SupabaseDataRow {
  BillCycleRow(super.data);

  @override
  SupabaseTable get table => BillCycleTable();

  int get customerId => getField<int>('customer_id')!;
  set customerId(int value) => setField<int>('customer_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get day => getField<int>('day')!;
  set day(int value) => setField<int>('day', value);

  int get billDueDay => getField<int>('bill_due_day')!;
  set billDueDay(int value) => setField<int>('bill_due_day', value);

  int get frequency => getField<int>('frequency')!;
  set frequency(int value) => setField<int>('frequency', value);

  bool get automaticCharge => getField<bool>('automatic_charge')!;
  set automaticCharge(bool value) => setField<bool>('automatic_charge', value);

  int get graceDays => getField<int>('grace_days')!;
  set graceDays(int value) => setField<int>('grace_days', value);
}
