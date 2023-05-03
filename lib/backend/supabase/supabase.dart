import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://rbudjaweilkhtvsezued.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJidWRqYXdlaWxraHR2c2V6dWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1MDUwNjcsImV4cCI6MTk5NjA4MTA2N30.I2us7Z0S2p941VhHcTQDv8sonkj5NYsqUimqHjqNmeE';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
