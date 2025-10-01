import 'package:flutter/material.dart';

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
            ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
            ListTile(leading: Icon(Icons.person), title: Text("Perfil")),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
            ),
            ListTile(leading: Icon(Icons.exit_to_app), title: Text("Sair")),
          ],
        ),
      ),
      body: Center(child: Text("Olá Mundo")),
    );
  }
}
