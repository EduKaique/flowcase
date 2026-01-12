import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool _isFavorite = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card.outlined(
          child: ListTile(
            onTap: () => Navigator.of(context).pushNamed('/artigo/1'),
            leading: IconButton(
              icon: Icon(
                _isFavorite ? Icons.favorite : Icons.favorite_border,
                color: _isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: _toggleFavorite,
            ),
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
      ),
    );
  }
}
