import '../database.dart';

class GenreAdTable extends SupabaseTable<GenreAdRow> {
  @override
  String get tableName => 'genre_ad';

  @override
  GenreAdRow createRow(Map<String, dynamic> data) => GenreAdRow(data);
}

class GenreAdRow extends SupabaseDataRow {
  GenreAdRow(super.data);

  @override
  SupabaseTable get table => GenreAdTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get posterImg => getField<String>('poster_img')!;
  set posterImg(String value) => setField<String>('poster_img', value);

  bool get visible => getField<bool>('visible')!;
  set visible(bool value) => setField<bool>('visible', value);

  String? get posterImgFile => getField<String>('poster_img_file');
  set posterImgFile(String? value) =>
      setField<String>('poster_img_file', value);
}
