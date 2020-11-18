import 'package:bloc_flutter_app/generated/l10n.dart';
import 'package:bloc_flutter_app/locale/translations.dart';
import 'package:bloc_flutter_app/src/views/views.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tieu_de_trang_chu),
        actions: [
          MaterialButton(
            child: Icon(Icons.sensor_window),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ThemeAppScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomeScreen(),
            SizedBox(
              height: 50,
            ),
            CounterScreen(),
          ],
        ),
      ),
    );
  }
}
