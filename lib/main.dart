import 'package:flutter/material.dart';

void main() => runApp(AppCinepolis());

class AppCinepolis extends StatelessWidget {
  const AppCinepolis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinepolis',
      home: Cinepolis(),
    );
  }
}//Fin clase AppCinepolis

class Cinepolis extends StatelessWidget {
  const Cinepolis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Cinepolis Jazmin Valtierra"),
        backgroundColor: Colors.pinkAccent,
          actions: [
            Icon(Icons.account_circle_sharp),
            Icon(Icons.add_a_photo_outlined),
        ],
      ),
      drawer:Drawer(),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 350,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          // Degradado Azul Rey
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF002366), Color(0xFF0047AB)],
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://raw.githubusercontent.com/JazminAnaya/IAMoviles_Act5_appBarCard_Gpo_6I/refs/heads/main/jazmin.png', // URL de ejemplo
              ),
            ),
            title: Text(
              'Jazmin Valtierra',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              'Gerente general',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    ],
  ),
)
    );
  }
}//Fin clase Pelicula