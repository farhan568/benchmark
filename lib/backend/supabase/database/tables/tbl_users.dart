import '../database.dart';

class TblUsersTable extends SupabaseTable<TblUsersRow> {
  @override
  String get tableName => 'tbl_users';

  @override
  TblUsersRow createRow(Map<String, dynamic> data) => TblUsersRow(data);
}

class TblUsersRow extends SupabaseDataRow {
  TblUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TblUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
