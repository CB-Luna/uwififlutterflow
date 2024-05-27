import '../database.dart';

class RoleTable extends SupabaseTable<RoleRow> {
  @override
  String get tableName => 'role';

  @override
  RoleRow createRow(Map<String, dynamic> data) => RoleRow(data);
}

class RoleRow extends SupabaseDataRow {
  RoleRow(super.data);

  @override
  SupabaseTable get table => RoleTable();

  int get roleId => getField<int>('role_id')!;
  set roleId(int value) => setField<int>('role_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  dynamic get permissions => getField<dynamic>('permissions')!;
  set permissions(dynamic value) => setField<dynamic>('permissions', value);
}
