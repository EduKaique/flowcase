
import 'package:flowcase/data/repository/user_repository.dart';
import 'package:flowcase/data/repository/user_repository_remote.dart';
import 'package:flowcase/data/services/api_dummyjson.dart';
import 'package:flowcase/ui/features/profile/view_models/profile_view_model.dart';
import 'package:flowcase/ui/features/settings/view_models/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowcase/ui/features/auth/widgets/login_screen.dart';
import 'package:flowcase/ui/features/home/widgets/home_screen.dart';
import 'package:flowcase/ui/features/articles/widgets/article_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  final apiService = ApiDummyjson();
  final userRepository = UserRepositoryRemote(api: apiService);


  runApp(MyApp(userRepository: userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({super.key, required this.userRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(profileViewModel: ProfileViewModel(userRepository: userRepository)),
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

