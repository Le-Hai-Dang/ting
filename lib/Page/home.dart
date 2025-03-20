import 'package:flutter/material.dart';
import 'package:ting/Page/employee..dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => Employee()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Học Firebase', style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Container(
          child: Text('Home'),
          
        ),
      ),
    );
  }
}
