// import 'package:bloc_flutter_app/src/blocs/base_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// mixin BlocCreator<T extends StatefulWidget> on State<T> {
//   B createBloc<B>() {
//     var _appBloc = Provider.of<AppBloc>(context, listen: false);
//     B _bloc = Provider.of<B>(context);
//     if (_bloc is BaseBloc) {
//       _bloc.injectBloc(_appBloc);
//     }
//     return _bloc;
//   }

//   B findBloc<B>() {
//     return Provider.of<B>(context);
//   }
// }
