import 'package:flowcase/data/repository/auth/auth_repository_remote.dart';
import 'package:flowcase/data/services/api_dummyjson.dart';
import 'package:flowcase/data/services/secure_storage_service.dart';
import 'package:flowcase/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  final apiService = ApiDummyjson();
  final storageService = SecureStorageService();
  final authRepository = AuthRepositoryRemote(
    api: apiService,
    storage: storageService,
  );

  final goRouter = router(authRepository);

  runApp(MyApp(router: goRouter));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FlowCase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),

      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
