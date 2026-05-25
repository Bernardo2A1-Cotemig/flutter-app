import 'package:flutter/material.dart';
import 'package:meuapp/pages/tela_home.dart';

class TelaConfiguracao extends StatelessWidget {
  const TelaConfiguracao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 0, 172, 43),
              child: Icon(
                Icons.settings,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Configurações',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              child: ListTile(
                leading: const Icon(Icons.notification_add_outlined),
                title: const Text('Noificação'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.wifi),
                title: const Text('Wi-Fi'),
                subtitle: const Text('rede: Cotemig123'),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.bluetooth),
                title: const Text('Bluetooth'),
                subtitle: const Text('Conectado: Air Pods Pro'),
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
