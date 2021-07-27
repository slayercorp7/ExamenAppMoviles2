import 'package:examen_parcial/BLOC/BLOC_user.dart';
import 'package:examen_parcial/UI/screen/Home.dart';
import 'package:examen_parcial/UI/widget/gradiente.dart';
import 'package:examen_parcial/UI/widget/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'TextImput.dart';
import 'googleBoton.dart';

class Inicio extends StatelessWidget {
  late UserBloc userBloc;
  final _controllerUsername = TextEditingController();
  final _controllerHobbies = TextEditingController();
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return login();
          } else {
            return Register();
          }
        });
  }

  Widget login() {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Gradiente(),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90, left: 60),
                width: 250,
                height: 150,
                child: Text(
                  "Bienvenido",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  width: 120,
                  height: 130,
                  margin: EdgeInsets.only(top: 190, left: 140),
                  child: Image(
                    image: AssetImage("assets/img/img4.png"),
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 250,
                  height: 40,
                  margin: EdgeInsets.only(top: 340, left: 60),
                  child: TextInput(
                      hint: "name",
                      inputType: TextInputType.name,
                      controller: TextEditingController(),
                      hintText: "name"))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  width: 250,
                  height: 40,
                  margin: EdgeInsets.only(top: 390, left: 60),
                  child: TextInput(
                      hint: "pass",
                      inputType: TextInputType.text,
                      controller: TextEditingController(),
                      hintText: "pass"))
            ],
          ),
          Row(
            children: [
              Container(
                  width: 250,
                  height: 80,
                  margin: EdgeInsets.only(top: 430, left: 60),
                  alignment: Alignment.topCenter,
                  child: GoogleBtn(
                      heightC: 20.0,
                      widhtC: 80.0,
                      onPressed: () {
                        userBloc.signIn().then((UserCredential user) =>
                            print("usted se a autenticado como:${user.user}"));
                      },
                      text: "login"))
            ],
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 100,
                margin: EdgeInsets.only(top: 510, left: 60),
                alignment: Alignment.topCenter,
                child: Text(
                  "login with",
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 110),
                    child: Image(
                      image: AssetImage("assets/img/img2.png"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(top: 550, left: 40),
                    child: Image(
                      image: AssetImage("assets/img/img3.png"),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 700, left: 120),
                    child: Text("terms of service",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
