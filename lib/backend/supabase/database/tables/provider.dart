import '../database.dart';

class ProviderTable extends SupabaseTable<ProviderRow> {
  @override
  String get tableName => 'provider';

  @override
  ProviderRow createRow(Map<String, dynamic> data) => ProviderRow(data);
}

class ProviderRow extends SupabaseDataRow {
  ProviderRow(super.data);

  @override
  SupabaseTable get table => ProviderTable();

  int get providerId => getField<int>('provider_id')!;
  set providerId(int value) => setField<int>('provider_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get taxPerc => getField<double>('tax_perc')!;
  set taxPerc(double value) => setField<double>('tax_perc', value);
}
