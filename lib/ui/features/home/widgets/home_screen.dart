import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Agora é StatelessWidget, muito mais leve!
class HomeWrapperScreen extends StatelessWidget {
  // Recebemos o controlador de navegação do GoRouter
  final StatefulNavigationShell navigationShell;

  const HomeWrapperScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final titles = const ['Feed', 'Favoritos', 'Notificações', 'Meu Perfil'];
    
    final int index = navigationShell.currentIndex;
    
    final bool isProfile = index == 3;

    return Scaffold(
      body: navigationShell,
      
      appBar: isProfile
          ? null
          : AppBar(
              title: Text(titles[index]),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (tappedIndex) {
          navigationShell.goBranch(
            tappedIndex,
            initialLocation: tappedIndex == navigationShell.currentIndex,
          );
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
    );
  }
}