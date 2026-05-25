import 'package:flutter/material.dart';
import 'package:meuapp/pages/tela_home.dart';

class TelaMusica extends StatelessWidget {
  const TelaMusica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.music_note,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Luan Santana',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Cantor Brasileiro',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Nome'),
                subtitle: const Text('Luan Rafael Domingos Santana'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Mais Ouvida'),
                subtitle: const Text('Meteoro'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Estado'),
                subtitle: const Text('Mato Grosso do Sul'),
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
