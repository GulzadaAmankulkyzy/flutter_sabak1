import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _san = 0;
  void _koshuu() {
    setState(() {
      _san++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter sabak',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
          child: Text('Бугун Flutter ге отуп жатабыз'),
        ),
        Text(
          '$_san',
          style: const TextStyle(fontSize: 25),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _koshuu,
        child: const Icon(Icons.add),
      ),
    );
  }
}
