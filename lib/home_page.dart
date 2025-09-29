import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Meu app"),
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
            // Image.asset(
            // 'imgs/1_l3wujEgEKOecwVzf_dqVrQ.jpeg',
            //width: double.infinity,
            //fit: BoxFit.cover,
            //),
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Center(child: (Text("Seja Bem-Vindo ao APP"))),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ],
        ),
      ),
      body: Center(child: Text("Olá Mundo")),
    );
  }
}
