import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
    const TelaPrincipal({Key? key}) : super(key: key);

    @override
    State<TelaPrincipal> createState() => _TelaPrincipalState();
    }

    class _TelaPrincipalState extends State<TelaPrincipal> {

    //Os métodos abaixo são para navegar da página principal para outras páginas
    void _abrirEmpresa(){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> TelaEmpresa()));
    }
    
    void _abrirSevico(){
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> TelaServico()));
    }
    
    void _abrirCliente (){
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> TelaCliente()));
    }
    
    void _abrirContato (){
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context)=> TelaContato()));
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
    appBar: AppBar(
    title: Text(
    "ATM Consultoria",
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    backgroundColor: Colors.green,
    ),
    body:  Container(
    padding: EdgeInsets.all(16),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.asset("imagens/logo.png"),
    Padding(
        padding: EdgeInsets.only(top: 32),
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("imagens/menu_empresa.png"),
                ),
                GestureDetector(
                    onTap: _abrirSevico,
                    child: Image.asset("imagens/menu_servico.png"),
                )
            ],
        ),
    ),
        Padding(
            padding: EdgeInsets.only(top: 32),
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    GestureDetector(
                        onTap: _abrirCliente,
                        child: Image.asset("imagens/menu_cliente.png"),
                    ),
                    GestureDetector(
                        onTap: _abrirContato,
                        child: Image.asset("imagens/menu_contato.png"),
                    )
                ],
            ),
        ),
    ],
    ),
    ),
    );
    }
    }
