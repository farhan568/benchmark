import '../database.dart';

class AssignedTable extends SupabaseTable<AssignedRow> {
  @override
  String get tableName => 'assigned';

  @override
  AssignedRow createRow(Map<String, dynamic> data) => AssignedRow(data);
}

class AssignedRow extends SupabaseDataRow {
  AssignedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssignedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get task => getField<int>('task');
  set task(int? value) => setField<int>('task', value);

  int? get employee => getField<int>('employee');
  set employee(int? value) => setField<int>('employee', value);
}
