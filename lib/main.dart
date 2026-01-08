import 'package:flutter/material.dart';
import 'package:flowcase/screens/login_screen.dart';
import 'package:flowcase/screens/feed_screen.dart';
import 'package:flowcase/screens/artigo_screen.dart';

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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/feed': (context) => const FeedScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/artigo/')) {
          // Extrai o ID da string da rota (ex: /artigo/123 -> 123)
          final id = settings.name!.split('/').last;

          return MaterialPageRoute(builder: (context) => ArtigoScreen(id: id));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Tela inicial"),
                FilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Fazer Login'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
