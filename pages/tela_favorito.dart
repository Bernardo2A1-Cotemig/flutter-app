import 'package:flutter/material.dart';
import 'package:meuapp/pages/tela_home.dart';

class TelaFavorito extends StatelessWidget {
  const TelaFavorito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 216, 0, 0),
              child: Icon(
                Icons.favorite,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Meus Favoritos',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.gamepad_rounded),
                title: const Text('Game'),
                subtitle: const Text('The Pillars (Fortnite)'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.album),
                title: const Text('Album'),
                subtitle: const Text('Maquina do Tempo'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Youtuber'),
                subtitle: const Text('Enaldinho'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.sports_soccer),
                title: const Text('Jogador'),
                subtitle: const Text('Neymar Jr'),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaHome()));
              },
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Sair'),
            )
          ],
        ),
      ),
    );
  }
}
