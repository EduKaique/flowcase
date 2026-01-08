import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                AppBar(title: Text("Feed"), centerTitle: true),
                Column(
                  children: [
                    Card.outlined(
                      child: ListTile(
                        onTap: () => {},
                        title: Text('User Name'),
                        subtitle: Text('This is a sample post in the feed.'),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.freepik.com/fotos-gratis/o-apresentador-de-noticias-anuncia-noticias-de-acidentes-de-carro_482257-114861.jpg?semt=ais_hybrid&w=740&q=80',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Card.outlined(
                      child: ListTile(
                        onTap: () => {},
                        title: Text('User Name'),
                        subtitle: Text('This is a sample post in the feed.'),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.freepik.com/fotos-gratis/o-apresentador-de-noticias-anuncia-noticias-de-acidentes-de-carro_482257-114861.jpg?semt=ais_hybrid&w=740&q=80',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Card.outlined(
                      child: ListTile(
                        onTap: () => {},
                        title: Text('User Name'),
                        subtitle: Text('This is a sample post in the feed.'),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.freepik.com/fotos-gratis/o-apresentador-de-noticias-anuncia-noticias-de-acidentes-de-carro_482257-114861.jpg?semt=ais_hybrid&w=740&q=80',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Card.outlined(
                      child: ListTile(
                        onTap: () => {},
                        title: Text('User Name'),
                        subtitle: Text('This is a sample post in the feed.'),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.freepik.com/fotos-gratis/o-apresentador-de-noticias-anuncia-noticias-de-acidentes-de-carro_482257-114861.jpg?semt=ais_hybrid&w=740&q=80',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                    Card.outlined(
                      child: ListTile(
                        onTap: () => {},
                        title: Text('User Name'),
                        subtitle: Text('This is a sample post in the feed.'),
                        trailing: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://img.freepik.com/fotos-gratis/o-apresentador-de-noticias-anuncia-noticias-de-acidentes-de-carro_482257-114861.jpg?semt=ais_hybrid&w=740&q=80',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Feed'),
              NavigationDestination(
                icon: Icon(Icons.favorite),
                label: 'Favoritos',
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications),
                label: 'Notificações',
              ),
              NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
            ],
          ),
        ],
      ),
    );
  }
}
