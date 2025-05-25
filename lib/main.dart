import 'package:flutter/material.dart';
import 'package:projeto_aplicacoes_moveis/home.dart';
import 'package:projeto_aplicacoes_moveis/busca_cep.dart';
import 'package:projeto_aplicacoes_moveis/bitcoin.dart';
import 'package:projeto_aplicacoes_moveis/tela_empresa.dart';

// Importar as telas


void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/buscacep': (context) => BuscaCep(),
        '/bitcoin': (context) => Bitcoin(),
        '/empresa': (context) => TelaEmpresa(),

        // Rotas para as telas importadas, adicionar Servicos, Clientes e Contato

      },
  ));
}