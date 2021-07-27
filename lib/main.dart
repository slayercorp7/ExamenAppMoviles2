import 'package:examen_parcial/UI/widget/Inicio.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'BLOC/BLOC_user.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

          // home: Profile(),
          home: Inicio(),
        ),
        bloc: UserBloc());
  }
}
