import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  final String id;
  const ArticleScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Artigo"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 16.0,
          children: [
            Flexible(
              child: Image.asset(
                "assets/images/placeholder_article.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Column(
              spacing: 24.0,
              children: [
                Column(
                  spacing: 8.0,
                  children: [
                    Text(
                      "Aqui vai o título do artigo sobre alguma coisa interessante.",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ), //Title
                    Row(
                      spacing: 8.0,
                      children: [
                        Text(
                          "Medium",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Text("—"),
                        Text("08 de Janeiro de 2026"),
                      ],
                    ),
                    Text(
                      "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () => {},
                      icon: Icon(Icons.favorite),
                      label: Text('Favoritar'),
                    ),
                    TextButton.icon(
                      onPressed: () => {},
                      label: Text("Link para Original"),
                      icon: Icon(Icons.open_in_new),
                      iconAlignment: IconAlignment.end,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
