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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

MySnackBar(message,context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))

  );
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Custom Design Button'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Center(
          child: GestureDetector(
            onTap: () {
              MySnackBar("I am Custom Button",context);
            },
          child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration
                (
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [

                    BoxShadow(
                        color: Colors.cyan,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(3, 3)),

                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(-5, -4))
                  ]
              ),

              child: Center
                (
                child: Text
                  (
                  'Button',
                   style: TextStyle

                    (
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15

                  ),
                ),
              ),
          ),
        ),
        ),
      ),
    );
  }
}
