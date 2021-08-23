

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zadimissao/pages/bem.vindo.dart';
import 'package:brasil_fields/src/formatters/cpf_input_formatter.dart';



class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
/*
  TextEditingController cotrolador = new TextEditingController();
  TextEditingController cotrolador2 = new TextEditingController();
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2bbab4),
      body:
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(80),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Image.asset("lib/images/logo.jpg" , height: 150, width: 200,),
                  TextFormField(

                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,CpfInputFormatter()
                    ],


                    autofocus: true, /*focar a tela no dialogo*/
                    keyboardType: TextInputType
                        .number, /*  vai abrir apenas numeros*/
                    style: new TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText:"123.456.78-91" ,
                        labelText: " Insira seu CPF:",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 28,)

                    ),
                  ),

                  Divider(),
                  TextFormField(
                    //controller: cotrolador,
                    obscureText: true, /*da o efeito de senha no campo*/
                    autofocus: true, /*focar a tela no dialogo*/
                    keyboardType: TextInputType
                        .text, /*  vai abrir apenas numeros*/
                    style: new TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: " Insira sua Senha:",
                        labelStyle: TextStyle(color: Colors.white, fontSize: 28,)
                    ),
                  ),
                  Divider(),
                   ButtonTheme(
                     height: 40.0,

                     child: RaisedButton(
                       onPressed: ()  {

                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => Bemvindo()));

                             /*  String pred = cotrolador.text;
                              String pred2 = cotrolador2.text;
                              showDialog(
                                context: context,
                                builder:(BuildContext context) => AlertDialog(
                                  title: new Text("Status do Login: $pred2" ,  style: TextStyle(color:Colors.white , fontSize:20),),
                                  content: new Text("Login feito com sucesso!" ,style: TextStyle(color:Colors.white, fontSize: 25),),
                                backgroundColor: Colors.cyan
                                ) ,
                              ); //showDialog */
                       },
                       child: Text("Login" , style:TextStyle(color:Colors.white , fontSize:24,),
                       ),
                       //color:Color(0xff2bbab4),
                       color:Colors.blueAccent,

                     ),
                   )


                ],
              ),
            )
        ),
      ),
    );
  }
}
