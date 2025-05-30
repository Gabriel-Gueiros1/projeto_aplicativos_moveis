import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  TelaContatoState createState() => TelaContatoState();
}

class TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Icon(Icons.email, color: Colors.green, size: 60),
                SizedBox(width: 10),
                Text(
                  "Fale Conosco",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text("Telefone: (11) 99999-9999", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.email, color: Colors.green),
                SizedBox(width: 8),
                Text("Email: contato@minhaempresa.com", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.location_on, color: Colors.green),
                SizedBox(width: 8),
                Text("Endereço: Rua Exemplo, 123 – São Paulo, SP",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
