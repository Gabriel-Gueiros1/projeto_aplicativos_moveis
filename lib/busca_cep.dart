import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BuscaCep extends StatefulWidget {
  const BuscaCep({super.key});

  @override
  BuscaCepState createState() => BuscaCepState();
}

class BuscaCepState extends State<BuscaCep> {

  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "";
  
   @override
  void dispose() {
    _controllerCep.dispose();
    super.dispose();
  }

  Future<void> _buscarCep() async {
    String cep = _controllerCep.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (cep.isEmpty) {
      setState(() {
        _resultado = "Informe um CEP válido!";
      });
      return;
    }

    final uri = Uri.https('viacep.com.br', '/ws/$cep/json/');

    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final Map<String, dynamic> dados = json.decode(response.body);
        if (dados.containsKey('erro')) {
          setState(() {
            _resultado = "CEP não encontrado!";
          });
        } else {
          final logradouro = dados['logradouro'] ?? '';
          final complemento = dados['complemento'] ?? '';
          final bairro = dados['bairro'] ?? '';
          final localidade = dados['localidade'] ?? '';
          final uf = dados['uf'] ?? '';
          setState(() {
            _resultado = '$logradouro $complemento, $bairro, $localidade - $uf';
          });
        }
      } else {
        setState(() {
          _resultado = 'Erro ao buscar CEP: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _resultado = 'Falha na requisição: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar CEP'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[  
            TextField(
              controller: _controllerCep,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'CEP (somente números)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _buscarCep,
              child: const Text('Buscar CEP'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
