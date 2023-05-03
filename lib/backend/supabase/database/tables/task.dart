import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
