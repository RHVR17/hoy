import 'package:flutter/material.dart';
import 'package:inss/pages/home_page.dart';
import 'package:inss/pages/otra_page.dart';
import 'package:inss/pages/otra_pagina2.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark //PARTE DE TELEFONO, CORREO, DIRECCION 
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key  });
  @override
  Widget build(BuildContext context) {
return  MaterialApp(
  title: 'Material App',
  initialRoute: '/',
  routes: {
    '/':(context)=> const HomePage(),
    '/otra':(context)=> const OtraPage(),
    '/otra2':(context)=> const OtraPage2(),
     },
);

  }
   }
   