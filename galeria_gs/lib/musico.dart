// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:galeria_gs/classes/Compositor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biográfia',
      darkTheme: ThemeData(
        useMaterial3: true, 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(75, 75, 75, 1)),
      ),
      themeMode: ThemeMode.dark,
      home: const Musico(title: 'Biográfia'),
    );
    
  }
}

class Musico extends StatefulWidget {
  const Musico({super.key, required this.title});

  final String title;

  @override
  State<Musico> createState() => _MusicoState();
}

class _MusicoState extends State<Musico> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  Compositor c = Compositor(
    "Gustavo Santaolalla",
    "biografia",
    ["1","2"]
  );

  @override
  Widget build(BuildContext context) {
    String texto = c.biografia;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        texto = c.biografia;
                      });
                    }, 
                    child: Text('Botão', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),)
                  ),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        texto = c.premios[1];
                      });
                    }, 
                    child: Text('Botão 2')
                  )
                ]
              )
            ),
            SizedBox(
              width: 500,
              height: 800,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUXjV1eBnFuuCPctCiZIVhDXwS1yv57HIkZg&s",
              ),
            ),
            SizedBox(
              child: Text(
                texto,
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            )
            
          ],
        )
      ),

    );
  }
}