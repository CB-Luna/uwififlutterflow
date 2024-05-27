import '../database.dart';

class GroupAdByGenreTable extends SupabaseTable<GroupAdByGenreRow> {
  @override
  String get tableName => 'group_ad_by_genre';

  @override
  GroupAdByGenreRow createRow(Map<String, dynamic> data) =>
      GroupAdByGenreRow(data);
}

class GroupAdByGenreRow extends SupabaseDataRow {
  GroupAdByGenreRow(super.data);

  @override
  SupabaseTable get table => GroupAdByGenreTable();

  int? get totalVideos => getField<int>('total_videos');
  set totalVideos(int? value) => setField<int>('total_videos', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  dynamic get adVideo => getField<dynamic>('ad_video');
  set adVideo(dynamic value) => setField<dynamic>('ad_video', value);
}
