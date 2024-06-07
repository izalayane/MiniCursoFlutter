import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/tela2_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              height: 400,
              width: 400,
              child: Column(
                children: [
                  Text('Login', style: TextStyle(fontSize: 24, color: Colors.black)),
                  Container(height: 40,),
                  TextField( decoration: InputDecoration(label: Text('Email')),),
                  Container(height: 40,),
                  TextField(decoration: InputDecoration(label: Text('Senha')),),
                  Container(height: 40,),
                  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2Page())),
                      child: Text('Entrar'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
