import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_perfil.dart';
import 'tela_musica.dart';
import 'tela_favorito.dart';
import 'tela_configuracao.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String mensagem = 'Clique em um botão para ver a mensagem';

  void mudarMensagem(String novaMensagem) {
    setState(() {
      mensagem = novaMensagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Bem-vindo ao aplicativo!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Escolha uma das opções abaixo:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                mensagem,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CardIcone(
              icone: Icons.music_note,
              titulo: 'Musica',
              descricao: 'Veja sua Musica.',
              textoBotao: 'Ver Musica',
              cor: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaMusica()));
              },
            ),
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Altere as preferências do aplicativo.',
              textoBotao: 'Configurar',
              cor: Colors.green,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaConfiguracao()));
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(20),
        height: 200,
        child: Column(
          children: [
            const Text(
              'Modal inferior',
              style: TextStyle(fontSize: 22),
            ),
            const Text('Esse modal aparece vindo de baixo.'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Fechar'),
            ),
          ],
        ),
      );
    },
  );

              },
            ),
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Veja seus itens favoritos.',
              textoBotao: 'Abrir',
              cor: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaFavorito()));
              },
            ),
            CardIcone(
              icone: Icons.fit_screen,
              titulo: 'Ver Perfil',
              descricao: 'Veja as informações do usuário.',
              textoBotao: 'Ver perfil',
              cor: const Color.fromARGB(255, 97, 0, 121),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaPerfil()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mudarMensagem('Você clicou no botão flutuante');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
