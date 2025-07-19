import 'package:flutter/material.dart';

// página adicional que puedes usar en tu app
class PaginaEjemplos extends StatelessWidget {
  const PaginaEjemplos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplos de Widgets'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Card(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('Mi Perfil'),
                subtitle: Text('Configurar información personal'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Ejemplos de Botones:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Wrap(
              spacing: 8,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevado')),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Contornado'),
                ),
                TextButton(onPressed: () {}, child: const Text('Texto')),
              ],
            ),

            const SizedBox(height: 16),

            
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Container con Gradiente',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            
            const Text(
              'Fila de Iconos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, size: 40, color: Colors.green),
                Icon(Icons.star, size: 40, color: Colors.orange),
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.settings, size: 40, color: Colors.grey),
              ],
            ),

            const SizedBox(height: 16),

           
            const Text(
              'Lista de Elementos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text('${index + 1}'),
                    ),
                    title: Text('Elemento ${index + 1}'),
                    subtitle: Text('Descripción del elemento ${index + 1}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TarjetaPersonalizada extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final IconData icono;
  final Color color;

  const TarjetaPersonalizada({
    super.key,
    required this.titulo,
    required this.descripcion,
    required this.icono,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icono, size: 40, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(descripcion, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
