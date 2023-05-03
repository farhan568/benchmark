import '../database.dart';

class DepartmentTable extends SupabaseTable<DepartmentRow> {
  @override
  String get tableName => 'department';

  @override
  DepartmentRow createRow(Map<String, dynamic> data) => DepartmentRow(data);
}

class DepartmentRow extends SupabaseDataRow {
  DepartmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
