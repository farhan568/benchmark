import '../database.dart';

class TestaTable extends SupabaseTable<TestaRow> {
  @override
  String get tableName => 'testa';

  @override
  TestaRow createRow(Map<String, dynamic> data) => TestaRow(data);
}

class TestaRow extends SupabaseDataRow {
  TestaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
