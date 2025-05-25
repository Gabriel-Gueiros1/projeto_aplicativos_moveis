import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});
  
  @override
  TelaClienteState createState() => TelaClienteState();
}

class TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.group, color: Colors.pink, size: 60),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Clientes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32),
              Center(
                child: Column(
                  children: <Widget>[
                    
                    // Implementar a lista de clientes

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
