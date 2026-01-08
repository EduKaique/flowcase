import 'package:flutter/material.dart';

class ArtigoScreen extends StatelessWidget {
  final String id;
  const ArtigoScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppBar(title: Text("Artigo $id")),
      ),
    );
  }
}