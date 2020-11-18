import 'package:bloc_flutter_app/locale/application.dart';
import 'package:bloc_flutter_app/locale/translations.dart';
import 'package:bloc_flutter_app/src/app.dart';
import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/counter/counter_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/home/home_bloc.dart';
import 'package:bloc_flutter_app/src/blocs/theme_app/theme_app_bloc.dart';
import 'package:bloc_flutter_app/src/helpers/bloc_creator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBloc>(create: (_) => AppBloc()),
        ChangeNotifierProvider(create: (_) => ThemeAppBloc()),
        ChangeNotifierProvider(create: (_) => HomeBloc()),
        ChangeNotifierProvider(create: (_) => CounterBloc()),
      ],
      child: ThemeAppMaster(),
    );
  }
}

class ThemeAppMaster extends StatefulWidget {
  @override
  _ThemeAppMasterState createState() => _ThemeAppMasterState();
}

class _ThemeAppMasterState extends State<ThemeAppMaster> {
  @override
  Widget build(BuildContext context) {
    final _themeAppBloc = context.watch<ThemeAppBloc>();
    final _isThemeLight = _themeAppBloc.isThemeLight;
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: context.watch<AppBloc>().locale,
      title: 'Flutter Demo',
      theme: _isThemeLight ? ThemeData.light() : ThemeData.dark(),
      home: AppContainer(),
    );
  }
}
