import 'package:bloc_flutter_app/generated/l10n.dart';
import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/home/home_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/theme_app/theme_app_bloc.dart';
import 'package:bloc_flutter_app/src/helpers/bloc_creator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeAppScreen extends StatelessWidget {
  const ThemeAppScreen();

  @override
  Widget build(BuildContext context) {
    return ThemeApp();
  }
}

class ThemeApp extends StatefulWidget {
  @override
  _ThemeAppState createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tieu_de_theme),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
            value: context.watch<ThemeAppBloc>().isThemeLight,
            onChanged: (val) {
              setState(() {
                final home = context.read<ThemeAppBloc>();
                home.changeTheme(!home.isThemeLight);
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text(S.of(context).en),
                onPressed: () {
                  context
                      .read<AppBloc>()
                      .update(Locale.fromSubtags(languageCode: 'en'));
                },
              ),
              RaisedButton(
                child: Text(S.of(context).vi),
                onPressed: () {
                  context
                      .read<AppBloc>()
                      .update(Locale.fromSubtags(languageCode: 'vi'));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
