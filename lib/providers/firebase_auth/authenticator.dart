import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _authProvider = Provider((_) => FirebaseAuth.instance);

final authUserProvider = StreamProvider(
  (ref) => ref.watch(_authProvider).userChanges(),
);

final userIdProvider = Provider(
  (ref) => ref.watch(authUserProvider).whenData((user) => user?.uid),
);

final isSignedInProvider = Provider(
  (ref) => ref.watch(userIdProvider).whenData((id) => id != null),
);

final signInAnonymouslyProvider = FutureProvider(
  (ref) => ref.watch(_authProvider).signInAnonymously(),
);
