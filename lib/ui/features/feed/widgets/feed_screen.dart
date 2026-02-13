import 'package:flowcase/ui/features/feed/widgets/card_article.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                CardArticle(),
                Card.outlined(
                  child: ListTile(
                    onTap: () {
                      context.push('/article/1');
                    },
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
          ),
        ],
      ),
    );
  }
}
