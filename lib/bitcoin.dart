import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Bitcoin extends StatefulWidget {
  const Bitcoin({super.key});
  @override
  BitcoinState createState() => BitcoinState();
}

class BitcoinState extends State<Bitcoin> {
  String _preco = "0";

  void _recuperarPreco() async {
    final url = Uri.https("blockchain.info", "ticker");
    final response = await http.get(url);
    final Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      
      _preco = retorno["BRL"]["buy"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Valor do Bitcoin"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bitcoin.png", height: 70),
              const SizedBox(height: 30),
              const Text(
                "Valor do Bitcoin",
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(height: 20),
              Text(
                "R\$ $_preco",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _recuperarPreco,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Atualizar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}