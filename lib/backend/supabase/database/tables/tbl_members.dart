import '../database.dart';

class TblMembersTable extends SupabaseTable<TblMembersRow> {
  @override
  String get tableName => 'tbl_members';

  @override
  TblMembersRow createRow(Map<String, dynamic> data) => TblMembersRow(data);
}

class TblMembersRow extends SupabaseDataRow {
  TblMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get idNo => getField<String>('id_no');
  set idNo(String? value) => setField<String>('id_no', value);

  String? get policyNo => getField<String>('policy_no');
  set policyNo(String? value) => setField<String>('policy_no', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
