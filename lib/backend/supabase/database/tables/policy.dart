import '../database.dart';

class PolicyTable extends SupabaseTable<PolicyRow> {
  @override
  String get tableName => 'policy';

  @override
  PolicyRow createRow(Map<String, dynamic> data) => PolicyRow(data);
}

class PolicyRow extends SupabaseDataRow {
  PolicyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PolicyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get policyNo => getField<String>('policy_no');
  set policyNo(String? value) => setField<String>('policy_no', value);

  String? get carMake => getField<String>('car_make');
  set carMake(String? value) => setField<String>('car_make', value);

  String? get carRegistration => getField<String>('car_registration');
  set carRegistration(String? value) =>
      setField<String>('car_registration', value);

  String? get carModel => getField<String>('car_model');
  set carModel(String? value) => setField<String>('car_model', value);

  int? get memberId => getField<int>('member_id');
  set memberId(int? value) => setField<int>('member_id', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
