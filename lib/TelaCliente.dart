import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Clientes"),
      ),
      body:
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("imagens/detalhe_cliente.png"),
                  ),
                  Text(
                    "Clientes",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                  ),
                  ),
                ],
              ),
              Image.asset("imagens/cliente1.png"),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                child:  Text(
                  "Empresa de software",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
              Image.asset("imagens/cliente2.png"),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child:  Text(
                  "Empresa de hardware",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
