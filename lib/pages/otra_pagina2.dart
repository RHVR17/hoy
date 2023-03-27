
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtraPage2 extends StatefulWidget {
  const OtraPage2({super.key});

    @override
  State<OtraPage2> createState() => _OtraPage2State();
}

class _OtraPage2State extends State<OtraPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prog',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Perfil(),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 55,
             
            ),
           const SizedBox(
              width: double.infinity,
              child: Text('Profile info'),
              ),         
            const SizedBox(height: 13),
         cosas('Date of Birth', '15 Feb 1996', CupertinoIcons.person),
            const SizedBox(
              width: double.infinity,
              child: Text('Contact info'),
              ),
            const SizedBox(height: 9),
         cosas('Main number', '91 95221 81654', CupertinoIcons.phone),
          
            const SizedBox(height: 9),
          cosas('Primary number', '91 95221 81654', CupertinoIcons.phone),
            const SizedBox(
              width: double.infinity,
              child: Text('Email info'),
              ),
            const SizedBox(height: 9),
           cosas('Main Email', 'test@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 13,),
            const SizedBox(
              width: double.infinity,
              child: Text('Address info'),
              ),
            const SizedBox(height: 9),
            cosas('Home Town Address', '56, Vivek Chowk, Ghatalodiya', CupertinoIcons.location),
            const SizedBox(height: 13,),
           
          ],
        ),
      ),
    );
  }

 cosas(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: const Icon(Icons.delete, color: Colors.black),
        tileColor: Colors.white,
      ),
    );
  }
}

