import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://bhzukydqmcpkiogwxyeq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJoenVreWRxbWNwa2lvZ3d4eWVxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc0MTUxNzMsImV4cCI6MjAzMjk5MTE3M30.AJpa-z1gdsSon6Tu_fytGlO6nweIUu1QaxgcDxwkzVg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
