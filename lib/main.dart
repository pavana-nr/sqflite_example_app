import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  final total1 = [1, 2, 3].sum();
  debugPrint(total1.toString());
  final total2 = [1.5, 2.5, 3.5].sum();
  debugPrint(total2.toString());

  final stack = Stack<String>();

  stack.push("A string.");

  debugPrint("Stack og String  " + stack._stack.first);
  final stack1 = Stack<int>();

  stack1.push(1);

  debugPrint("Stack of int  " + stack1._stack.first.toString());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: Container(
      color: Colors.yellow,
      child: const Text(
        "dskjsdhfjk eansbflkj 213456",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.red,
        ),
      ),
    ).paddingAll(100.0))));
  }
}

class Stack<T> {
  List<T> _stack = [];

  void push(T item) => _stack.add(item);
  T pop() => _stack.removeLast();
}

extension IterableX<T extends num> on Iterable<T> {
  T sum() {
    T sum = (T == int ? 0 : 0.0) as T;
    for (T current in this) {
      // ignore: unnecessary_null_comparison
      if (current != null) {
        sum = sum + current as T;
      }
    }
    return sum;
  }
}

extension WidgetPaddingAll on Widget {
  Widget paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }
}
