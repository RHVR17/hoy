import 'package:flutter/material.dart';

class OtraPage extends StatefulWidget {
  const OtraPage ({super.key});

  @override
  State<OtraPage> createState() => _OtraPageState();
}

class _OtraPageState extends State<OtraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
      title: const Text("Sesión"),
    ),
    body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          alignment: Alignment.center,
          child: const Icon(Icons.person_add),
        ),
        Container(
        padding: const EdgeInsets.all(15),
        child:  const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Usuario'
          ),
        ),
        ),

        Container(
        padding: const EdgeInsets.all(15),
        child:  const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Contraseña'
          ),
        ),
        ),
       
       ElevatedButton(
          onPressed: () {
            //navegacion a la pagina de listas
            Navigator.of(context).pushNamed("/otra2");
          },
          child: const Text(
            'Ingresar',
            style: TextStyle(fontSize: 30),
          ),
        ),
       
         
        ],
    ),
    );
  }
    }