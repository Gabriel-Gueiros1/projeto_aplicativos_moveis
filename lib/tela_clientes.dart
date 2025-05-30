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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.group, color: Colors.pink, size: 60),
                 SizedBox(width: 10),
                Text(
                  "Nossos clientes",
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
              ],
            ),
            const SizedBox(height: 32),

            Row(
              children: [
                Icon(MdiIcons.account, size: 30, color: Colors.pink),
                SizedBox(width: 8),
                Text("Empresa Alpha Ltda.", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Icon(MdiIcons.accountSupervisor, size: 30, color: Colors.pink),
                SizedBox(width: 8),
                Text("Beta Corp.", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Icon(MdiIcons.accountMultiple, size: 30, color: Colors.pink),
                SizedBox(width: 8),
                Text("Gamma Inc.", style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
