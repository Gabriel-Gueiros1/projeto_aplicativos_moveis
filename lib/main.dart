import 'package:flutter/material.dart';
import 'package:projeto_aplicacoes_moveis/home.dart';
import 'package:projeto_aplicacoes_moveis/busca_cep.dart';
import 'package:projeto_aplicacoes_moveis/bitcoin.dart';
import 'package:projeto_aplicacoes_moveis/tela_clientes.dart';
import 'package:projeto_aplicacoes_moveis/tela_contato.dart';
import 'package:projeto_aplicacoes_moveis/tela_empresa.dart';
import 'package:projeto_aplicacoes_moveis/tela_servicos.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/':          (context) => const Home(),
        '/buscacep': (context) => const BuscaCep(),
        '/bitcoin': (context) => const Bitcoin(),
        '/clientes':  (context) => const TelaCliente(),
        '/contato':   (context) => const TelaContato(),
        '/empresa': (context) => const TelaEmpresa(),
        '/servicos': (context) => const TelaServico(),

      },
  ));
}