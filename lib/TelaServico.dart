import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Serviços"),
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
                    child: Image.asset("imagens/detalhe_servico.png"),
                  ),
                  Text(
                    "Nossos Serviços",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Consultoria"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Cálculo de preços"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Acompanhamento de projetos"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
