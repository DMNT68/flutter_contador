import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    setState(() => counter++);
  }

  void dicrease() {
    setState(() => counter--);
  }

  void restart() {
    setState(() => counter = 0);
  }

  void operation(String expression) {
    switch (expression) {
      case 'add':
        setState(() => counter++);
        break;
      case 'subtract':
        setState(() => counter--);
        break;
      case 'restart':
        setState(() => counter = 0);
        break;
      default:
        setState(() => counter = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('CounterScreen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        dicreaseFn: dicrease,
        restartFn: restart,
        operationFn: operation,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function dicreaseFn;
  final Function restartFn;
  final Function operationFn;

  const CustomFloatingActions({
    Key key,
    this.increaseFn,
    this.dicreaseFn,
    this.restartFn,
    this.operationFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          tooltip: 'Add',
          onPressed: () => operationFn('add'),
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.plus_one_rounded),
        ),
        FloatingActionButton(
          tooltip: 'Restart',
          onPressed: () => operationFn('restart'),
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.restart_alt_sharp),
        ),
        FloatingActionButton(
          tooltip: 'Subtract',
          onPressed: () => operationFn('subtract'),
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.exposure_minus_1_rounded),
        ),
      ],
    );
  }
}
