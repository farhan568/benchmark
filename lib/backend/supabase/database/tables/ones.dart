import '../database.dart';

class OnesTable extends SupabaseTable<OnesRow> {
  @override
  String get tableName => 'ones';

  @override
  OnesRow createRow(Map<String, dynamic> data) => OnesRow(data);
}

class OnesRow extends SupabaseDataRow {
  OnesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OnesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get lista => getField<String>('lista');
  set lista(String? value) => setField<String>('lista', value);
}
