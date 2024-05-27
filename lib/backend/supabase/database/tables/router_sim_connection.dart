import '../database.dart';

class RouterSimConnectionTable extends SupabaseTable<RouterSimConnectionRow> {
  @override
  String get tableName => 'router_sim_connection';

  @override
  RouterSimConnectionRow createRow(Map<String, dynamic> data) =>
      RouterSimConnectionRow(data);
}

class RouterSimConnectionRow extends SupabaseDataRow {
  RouterSimConnectionRow(super.data);

  @override
  SupabaseTable get table => RouterSimConnectionTable();

  int get routerSimConnectionId => getField<int>('router_sim_connection_id')!;
  set routerSimConnectionId(int value) =>
      setField<int>('router_sim_connection_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get createdBy => getField<int>('created_by');
  set createdBy(int? value) => setField<int>('created_by', value);

  String get port => getField<String>('port')!;
  set port(String value) => setField<String>('port', value);

  int get routerDetailFk => getField<int>('router_detail_fk')!;
  set routerDetailFk(int value) => setField<int>('router_detail_fk', value);

  int get simDetailFk => getField<int>('sim_detail_fk')!;
  set simDetailFk(int value) => setField<int>('sim_detail_fk', value);
}
