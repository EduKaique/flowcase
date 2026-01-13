import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(16.0),
        child: Column(
          spacing: 4.0,
          children: [
            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text("Novo artigo publicado"),
              subtitle: Text("Supporting line text, lorem ipsum dolor"),
              trailing: Text("agora"),
              titleAlignment: ListTileTitleAlignment.top,
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Sucesso"),
              subtitle: Text("Supporting line text, lorem ipsum dolor"),
              trailing: Text("18 min atrás"),
              titleAlignment: ListTileTitleAlignment.top,
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.error_outline),
              title: Text("Erro"),
              subtitle: Text("Supporting line text, lorem ipsum dolor"),
              trailing: Text("4 horas atrás"),
              titleAlignment: ListTileTitleAlignment.top,
            ),
            Divider(height: 0),
          ],
        ),
      ),
    );
  }
}
