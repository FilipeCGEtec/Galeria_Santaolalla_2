// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:galeria_gs/musico.dart';
import 'package:galeria_gs/midia.dart';
import 'package:galeria_gs/musicas.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeria Santaolalla',
      darkTheme: ThemeData(
        useMaterial3: true, 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(75, 75, 75, 1)),
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Página Principal'),
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontSize: 30),),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
              SizedBox(height: 200,),
              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton.icon(
                  label: const Text(
                    "Biografia",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                    ), 
                  icon: const Icon(
                    Icons.person_pin,
                    size: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    ), 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Musico(title: 'Biografia',))
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 197, 197, 197)
                  )
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton.icon(
                  label: const Text(
                    "Mídias",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ), 
                  icon: const Icon(
                    Icons.sports_basketball_outlined,
                    size: 40,
                    color: Color.fromARGB(255, 0, 0, 0),
                    ), 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Midia(title: 'Midia',))
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 197, 197, 197)
                  )
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 330,                
                child: ElevatedButton.icon(
                  label: const Text(
                    "Músicas",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ), 
                  icon: const Icon(
                    Icons.music_note,
                    size: 40,
                    color: Color.fromARGB(255, 0, 0, 0),), 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Musicas(title: 'Musicas',))
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 197, 197, 197)
                  )
                ),
              ),
              SizedBox(height: 400,),
              Container(
                height: 90,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.black,
                child: Text(
                  "nome da Música",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
          ],
        ),
      ),

    );
  }
}

