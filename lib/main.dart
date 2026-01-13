
import 'package:flowcase/ui/features/settings/view_models/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowcase/ui/features/auth/widgets/login_screen.dart';
import 'package:flowcase/ui/features/home/widgets/home_screen.dart';
import 'package:flowcase/ui/features/articles/widgets/article_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/setting': (context) => const SettingScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/artigo/')) {
          final id = settings.name!.split('/').last;

          return MaterialPageRoute(builder: (context) => ArticleScreen(id: id));
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

