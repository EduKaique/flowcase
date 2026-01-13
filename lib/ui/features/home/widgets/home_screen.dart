import 'package:flowcase/ui/features/home/widgets/feed_screen.dart';
import 'package:flutter/material.dart';

import 'package:flowcase/ui/features/favorites/widgets/favorite_screen.dart';
import 'package:flowcase/ui/features/notifications/widgets/notification_screen.dart';
import 'package:flowcase/ui/features/profile/widgets/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  final _screens = const [
    FeedScreen(),
    FavoriteScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  final _titles = const ['Feed', 'Favoritos', 'Notificações', 'Meu Perfil'];

  bool get _isProfile => _index == 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isProfile
          ? null
          : AppBar(
              title: Text(_titles[_index]),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) {
          setState(() => _index = i);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Feed'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favoritos'),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      body: IndexedStack(index: _index, children: _screens),
    );
  }
}
