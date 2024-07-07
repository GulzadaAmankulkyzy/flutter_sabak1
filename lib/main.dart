import 'package:flutter/material.dart';
import 'package:flutter_sabak1/counter.dart';

void main() {
  runApp(const MeninTirkemem());
}

//void- эч нерсе кайтарылбайт
//main- функциянын аты
//()- main дин биринчи функциясы
// {}-денесинде эмнелер болсо ошонун баарын аткарат
// import- бетиндеги даталарды таанытуу учун колдонулат
//runApp-бул 1 функция, анын кашасынан билдик
//const- бир эле жолу берилет,туруктуу
//MyApp- бул виджетжон эле соз
//MeninTirkemem- бул виджеттен келген class(object)
class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

// Extends-бул мурас беруу деп аталат Parent class тан child class ка мурас берет
//super-атасына бериле турган пропертин беруу учун колдонулат.
//уландысы-(child тан Parent)
// Widjet- бул flutter ге тиешелуу баардык нерсе.dart та баардык нерсе object болуп саналса
//уланысы-flutter де Widjet болуп саналат
//Map Key лер менен иштейт
//Key- бул бир Widjet ке ачкыч бергибиз келсе беребиз, Widjet тер кайсы
//уландысы кайсы жерде жайгаштыгын билуу учун керек.
//@override, super.key---object болуп саналат.
//@override-деген атасындагы функцияны кайра жазуу
//Widjet- бул flutter ге тиешелуу баардык нерсе
//build-деген --=build методунун Widjet тин кайтаруу тиби болот
//build- функциянын ата
//BuildContex-бул Flutter де address деп коюшат
  //String ayt(String maani) {
  //return-деген кайтаруу---build функциясын кайтаруусу
  //MaterialApp-бул flutter деги Widjet
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // title-бул MaterialApp ала турган бир проперти.
      //theme-бул MaterialApp ала турган бир проперти.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterApp(),
    );
    // home-бул MaterialApp ала турган бир проперти.
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//property-бул class тын касиети болот.
class tash {
  //катуу
  //формалуу
  //тустуу
  //ушундай озгочолукторун берсек бул поперти,кыргызча касиети.
}
//method
//кулайт
//кармайт
//ушундай фукциясын берсек бул метод.