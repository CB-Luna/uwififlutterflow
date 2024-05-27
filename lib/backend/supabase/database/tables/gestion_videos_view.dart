import '../database.dart';

class GestionVideosViewTable extends SupabaseTable<GestionVideosViewRow> {
  @override
  String get tableName => 'gestion_videos_view';

  @override
  GestionVideosViewRow createRow(Map<String, dynamic> data) =>
      GestionVideosViewRow(data);
}

class GestionVideosViewRow extends SupabaseDataRow {
  GestionVideosViewRow(super.data);

  @override
  SupabaseTable get table => GestionVideosViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get overview => getField<String>('overview');
  set overview(String? value) => setField<String>('overview', value);

  String? get posterPath => getField<String>('poster_path');
  set posterPath(String? value) => setField<String>('poster_path', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get video => getField<String>('video');
  set video(String? value) => setField<String>('video', value);

  int? get durationVideo => getField<int>('duration_video');
  set durationVideo(int? value) => setField<int>('duration_video', value);

  String? get urlAd => getField<String>('url_ad');
  set urlAd(String? value) => setField<String>('url_ad', value);

  int? get priority => getField<int>('priority');
  set priority(int? value) => setField<int>('priority', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get expirationDate => getField<DateTime>('expiration_date');
  set expirationDate(DateTime? value) =>
      setField<DateTime>('expiration_date', value);

  int? get points => getField<int>('points');
  set points(int? value) => setField<int>('points', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);
}
