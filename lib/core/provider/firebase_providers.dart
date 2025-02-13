// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:riverpod/riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import '../keys/supabase_api_keys.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseAuthProvider = Provider((ref) => supabase.SupabaseAuth.instance);
final supabaseProvider = Provider((ref) => supabase.SupabaseClient(supabaseApiURL,supabaseApiPublicKey));
final authProvider = Provider((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider((ref) => GoogleSignIn());
