import 'package:flutter/material.dart';

void main() {
  runApp(const PapeleriaApp());
}

class PapeleriaApp extends StatelessWidget {
  const PapeleriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductosScreen(),
    );
  }
}

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EAEA),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "La Casita de Papel",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              // TODO: Handle person icon tap
            },
          ),
          IconButton(
            icon: const Icon(Icons.list_sharp, color: Colors.white),
            onPressed: () {
              // TODO: Handle list icon tap
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Productos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contacto",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Novedades',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ProductoCard(
              subtitulo: "Destacado",
              titulo: "Juego Geometrico color amarillo.",
              imageUrl: "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/d.png",
            ),
            SizedBox(height: 25),
            ProductoCard(
              subtitulo: "Llega Pronto",
              titulo: "Set de acuarelas para niños.",
              imageUrl: "https://raw.githubusercontent.com/OsvaldoArellano/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/e.png",
            ),
          ],
        ),
      ),
    );
  }
}

class ProductoCard extends StatelessWidget {
  final String subtitulo;
  final String titulo;
  final String imageUrl;

  const ProductoCard({
    super.key,
    required this.subtitulo,
    required this.titulo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔤 SUBTÍTULO ARRIBA
        Text(
          subtitulo,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        // 🟥 CONTENEDOR
        Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.red.shade400,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    imageUrl,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titulo,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
