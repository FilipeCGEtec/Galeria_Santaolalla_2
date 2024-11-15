// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Músicas',
      darkTheme: ThemeData(
        useMaterial3: true, 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(75, 75, 75, 1)),
      ),
      themeMode: ThemeMode.dark,
      home: const Musicas(title: 'Músicas'),
    );
    
  }
}

class Musicas extends StatefulWidget {
  const Musicas({super.key, required this.title});

  final String title;

  @override
  State<Musicas> createState() => _MusicasState();
}

class _MusicasState extends State<Musicas> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(172, 0, 0, 0),
        actions: <Widget>
        [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          )
        ],
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 30),),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      
      
      body: Center(
        
      ),

    );
  }
}