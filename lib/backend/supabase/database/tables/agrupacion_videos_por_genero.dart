import '../database.dart';

class AgrupacionVideosPorGeneroTable
    extends SupabaseTable<AgrupacionVideosPorGeneroRow> {
  @override
  String get tableName => 'agrupacion_videos_por_genero';

  @override
  AgrupacionVideosPorGeneroRow createRow(Map<String, dynamic> data) =>
      AgrupacionVideosPorGeneroRow(data);
}

class AgrupacionVideosPorGeneroRow extends SupabaseDataRow {
  AgrupacionVideosPorGeneroRow(super.data);

  @override
  SupabaseTable get table => AgrupacionVideosPorGeneroTable();

  String? get genreName => getField<String>('genre_name');
  set genreName(String? value) => setField<String>('genre_name', value);

  int? get videoCount => getField<int>('video_count');
  set videoCount(int? value) => setField<int>('video_count', value);

  int? get rowNumber => getField<int>('row_number');
  set rowNumber(int? value) => setField<int>('row_number', value);

  dynamic get videos => getField<dynamic>('videos');
  set videos(dynamic value) => setField<dynamic>('videos', value);
}
