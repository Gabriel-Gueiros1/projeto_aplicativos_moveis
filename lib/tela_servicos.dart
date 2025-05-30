import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({super.key});

  @override
  TelaServicoState createState() => TelaServicoState();
}

class TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.business_center, color: Colors.cyan, size: 60),
                SizedBox(width: 10),
                Text(
                  "Nossos serviços",
                  style: TextStyle(fontSize: 20, color: Colors.cyan),
                ),
              ],
            ),
            const SizedBox(height: 30),

            Row(
              children: [
                Icon(MdiIcons.codeBraces, size: 30, color: Colors.cyan),
                SizedBox(width: 8),
                Text(
                  "Desenvolvimento de apps móveis",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Icon(MdiIcons.serverNetwork, size: 30, color: Colors.cyan),
                SizedBox(width: 8),
                Text(
                  "Integração com APIs e back-end",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Icon(MdiIcons.robotIndustrial, size: 30, color: Colors.cyan),
                SizedBox(width: 8),
                Text(
                  "Consultoria em TI",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
