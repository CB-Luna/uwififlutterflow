import '../database.dart';

class AdsViewTable extends SupabaseTable<AdsViewRow> {
  @override
  String get tableName => 'ads_view';

  @override
  AdsViewRow createRow(Map<String, dynamic> data) => AdsViewRow(data);
}

class AdsViewRow extends SupabaseDataRow {
  AdsViewRow(super.data);

  @override
  SupabaseTable get table => AdsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get overview => getField<String>('overview');
  set overview(String? value) => setField<String>('overview', value);

  String? get posterPath => getField<String>('poster_path');
  set posterPath(String? value) => setField<String>('poster_path', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  int? get genreId => getField<int>('genre_id');
  set genreId(int? value) => setField<int>('genre_id', value);

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

  String? get videoFileName => getField<String>('video_file_name');
  set videoFileName(String? value) =>
      setField<String>('video_file_name', value);

  String? get partner => getField<String>('partner');
  set partner(String? value) => setField<String>('partner', value);

  String? get posterFileName => getField<String>('poster_file_name');
  set posterFileName(String? value) =>
      setField<String>('poster_file_name', value);

  dynamic get categories => getField<dynamic>('categories');
  set categories(dynamic value) => setField<dynamic>('categories', value);
}
