import 'package:bloc_flutter_app/generated/l10n.dart';
import 'package:bloc_flutter_app/src/blocs/counter/counter_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/home/home_bloc.dart';
import 'package:bloc_flutter_app/src/helpers/bloc_creator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterBloc>();
    return Container(
      height: 100,
      color: Colors.amber,
      child: Center(
        child: Column(
          children: [
            Text(
              "${S.of(context).dem} = ${counter.count}",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            RaisedButton(
              color: Colors.indigo,
              onPressed: () {
                final homeBloc = context.read<HomeBloc>();
                homeBloc.changeColor(!homeBloc.hasColor);
              },
              child: Text(
                "${S.of(context).thay_doi_mau}",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
