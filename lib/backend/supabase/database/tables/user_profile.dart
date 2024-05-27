import '../database.dart';

class UserProfileTable extends SupabaseTable<UserProfileRow> {
  @override
  String get tableName => 'user_profile';

  @override
  UserProfileRow createRow(Map<String, dynamic> data) => UserProfileRow(data);
}

class UserProfileRow extends SupabaseDataRow {
  UserProfileRow(super.data);

  @override
  SupabaseTable get table => UserProfileTable();

  String get userProfileId => getField<String>('user_profile_id')!;
  set userProfileId(String value) => setField<String>('user_profile_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  int get roleFk => getField<int>('role_fk')!;
  set roleFk(int value) => setField<int>('role_fk', value);

  int get sequentialId => getField<int>('sequential_id')!;
  set sequentialId(int value) => setField<int>('sequential_id', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get mobilePhone => getField<String>('mobile_phone');
  set mobilePhone(String? value) => setField<String>('mobile_phone', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
