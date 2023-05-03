import '../database.dart';

class ChecklistTable extends SupabaseTable<ChecklistRow> {
  @override
  String get tableName => 'checklist';

  @override
  ChecklistRow createRow(Map<String, dynamic> data) => ChecklistRow(data);
}

class ChecklistRow extends SupabaseDataRow {
  ChecklistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get service => getField<int>('service');
  set service(int? value) => setField<int>('service', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
