import 'package:flowcase/screens/favorite_screen.dart';
import 'package:flowcase/screens/notification_screen.dart';
import 'package:flowcase/screens/profile_screen.dart';
import 'package:flowcase/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowcase/screens/login_screen.dart';
import 'package:flowcase/screens/feed_screen.dart';
import 'package:flowcase/screens/article_screen.dart';
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const FeedScreen(),
        '/setting': (context) => const SettingScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/artigo/')) {
          final id = settings.name!.split('/').last;

          return MaterialPageRoute(builder: (context) => ArticleScreen(id: id));
        }
        return null; // Deixa o Flutter tentar outras rotas ou mostrar 404
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: _opcaoSelecionada,
        onDestinationSelected: (int index) {
          setState(() {
            _opcaoSelecionada = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Feed'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favoritos'),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      body: IndexedStack(
        index: _opcaoSelecionada,
        children: [
          FeedScreen(),
          FavoriteScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
