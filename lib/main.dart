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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {

    
    // TODO: implement initState
    super.initState();
  }
  late int a;
  late int b;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: Text('+'),
            onPressed: () {
              print(a + b);
            },
          ),
          FloatingActionButton(
            child: Text('-'),
            onPressed: () {
              print(a - b);
            },
          ),
          FloatingActionButton(
            child: Text('/'),
            onPressed: () {
              if (b != 0) {
                print(a / b);
              } else {
                print('на нуль делить нельзя');
              }
            },
          ),
          FloatingActionButton(
            child: Text('*'),
            onPressed: () {
              print(a * b);
            },
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              if (value.isNotEmpty) {
                a = int.parse(value);
              } else {
                print('Введите число');
              }
            },
          ),
          Text(
            '(+)(-)(/)(*)',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            onChanged: (value) {
              if (value.isNotEmpty) {
                b = int.parse(value);
              } else {
                print('Введите число');
              }
            },
          ),
          Text(
            '=',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
            ),
          ),
          // FloatingActionButton(onPressed: () {}),
        ],
      ),
    );
  }
}
