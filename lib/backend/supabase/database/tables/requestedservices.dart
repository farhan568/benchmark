import '../database.dart';

class RequestedservicesTable extends SupabaseTable<RequestedservicesRow> {
  @override
  String get tableName => 'requestedservices';

  @override
  RequestedservicesRow createRow(Map<String, dynamic> data) =>
      RequestedservicesRow(data);
}

class RequestedservicesRow extends SupabaseDataRow {
  RequestedservicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RequestedservicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  int? get member => getField<int>('member');
  set member(int? value) => setField<int>('member', value);

  int? get policy => getField<int>('policy');
  set policy(int? value) => setField<int>('policy', value);

  String? get service => getField<String>('service');
  set service(String? value) => setField<String>('service', value);
}
