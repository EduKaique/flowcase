import 'package:flowcase/ui/core/themes/dimensions/dimension_alias.dart';
import 'package:flutter/material.dart';
import 'package:flowcase/ui/core/themes/type/helper_text_extension.dart';

class CardArticle extends StatelessWidget {
  // final String title;
  // final String description;
  // final String author;
  // final DateTime date;
  // final String imageUrl;

  // const CardArticle({
  //   required this.title,
  //   required this.description,
  //   required this.author,
  //   required this.date,
  //   required this.imageUrl,
  // });
  const CardArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      child: Column(
        spacing: AppDimensionAlias.spacingSm,
        children: [
          Divider(color: Theme.of(context).colorScheme.outlineVariant),
          Text(
            "08 de Jan de 2026",
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(fontSize: 12.0, height: 12.0),
          ),
          Column(
            children: [
              Row(
                spacing: 24,
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1585241936939-be4099591252?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    width: 128,
                    height: 72,
                  ),
                  Text(
                    "Lorem ipsum nam egestas blandit odio orci ac.",
                    style: context.textExt.titleLargeEmphasized,
                  ),
                ],
              ),
              Text(
                "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring w...",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Medium", style: Theme.of(context).textTheme.bodySmall),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up_off_alt_outlined),
                      Text("16", style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.chat_bubble_outline),
                      Text("16", style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Theme.of(context).colorScheme.outlineVariant),
        ],
      ),
    );
  }
}
