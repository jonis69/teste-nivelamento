import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text(
                  'Números não primos',
                  style: TextStyle(color: Colors.white),
                ),
                background: Image.asset(
                  'assets/images/header.png',
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 200,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    ListTile(title: Text((lista[index]).toString())),
                childCount: lista.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
