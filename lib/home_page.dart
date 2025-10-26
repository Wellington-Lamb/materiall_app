import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Material App"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(
            0,
          ), // Pega 100% do padding, se colocar EdgeInsets.all(1) ele fica com uma mini borda em branco
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("imgs/empresa.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ), // Deixa o fundo transparente para pegar a imagem coloada atrás
                    accountName: Text("Wellington Lamb"),
                    accountEmail: Text("tonlamb17@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      foregroundImage: AssetImage("imgs/wellington.jpg"),
                    ),
                  ),
                ],
              ),
            ),

            // Opções do menu
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              title: Text("Configurações"),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
              title: Text("Sair"),
              onTap: () => _exitApp(),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Olá Mundo")),
    );
  }

  // Função para sair do app e verificando se é Android ou iOS.
  // Como ela vai ser usada somente aqui então não vai ser criado
  // um arquivo onde ela vai ser incluida.
  void _exitApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop(); // Sai do app no Android
    } else if (Platform.isIOS) {
      exit(0); // Sai do app no iOS
    }
  }
}
