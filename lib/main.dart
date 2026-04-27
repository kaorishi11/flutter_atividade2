import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Atividade Flutter'),
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
  
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: isFollowing ? Colors.green[100] : Colors.blue[100],
        title: Text(widget.title),
      ),

      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              isFollowing = !isFollowing;
            });
          },
          icon: isFollowing
              ? const Icon(Icons.check)
              : const Icon(Icons.add),
          label: Text(isFollowing ? "Seguindo" : "Seguir"),
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isFollowing ? Colors.green : Colors.blue,
          ),
        ),
      ),
    );
  }
}