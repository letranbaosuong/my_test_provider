import 'package:bloc_flutter_app/src/blocs/counter/counter_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/home/home_bloc.dart';
import 'package:bloc_flutter_app/src/helpers/bloc_creator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen();

  @override
  Widget build(BuildContext context) {
    return Counter();
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final home = context.watch<HomeBloc>();
    return Column(
      children: <Widget>[
        RaisedButton(
          color: home.hasColor ? Colors.indigo : null,
          onPressed: () {
            final counter = context.read<CounterBloc>();
            counter.increment();
          },
          child: Text(
            "+",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        RaisedButton(
          color: home.hasColor ? Colors.indigo : null,
          onPressed: () {
            final counter = context.read<CounterBloc>();
            counter.mute();
          },
          child: Text(
            "0",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        RaisedButton(
          color: home.hasColor ? Colors.indigo : null,
          onPressed: () {
            final counter = context.read<CounterBloc>();
            counter.decrement();
          },
          child: Text(
            "-",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
