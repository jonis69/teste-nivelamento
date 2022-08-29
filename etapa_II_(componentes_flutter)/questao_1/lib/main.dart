import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    List<int> lista = [];

    void naoPrimo(int num) {
      for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
          lista.add(num);
          break;
        }
      }
    }

    for (int i = 2; i <= 200; i++) {
      naoPrimo(i);
    }

    return MaterialApp(
      title: 'Números não primos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Números não primos'),
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () =>
                      Fluttertoast.showToast(msg: (index + 1).toString()),
                  child: Column(
                    children: [
                      const Divider(),
                      Text(lista[index].toString()),
                      const Divider(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
