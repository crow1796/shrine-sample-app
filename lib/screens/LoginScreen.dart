import 'package:flutter/material.dart';
import 'package:flutter_redux_app/base_widgets/TextField.dart';

class LoginScreen extends StatefulWidget{
    @override
    State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();
    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: SafeArea(
                child: ListView(
                children: <Widget>[
                    SizedBox(height: 80.0),
                    Column(
                        children: <Widget>[
                            SizedBox(height: 16.0),
                            Image.asset("assets/images/diamond.png"),
                            Text("SHRINE")
                        ],
                    ),
                    SizedBox(height: 120.0),
                    BTextField(controller: _usernameController, labelText: "Username"),
                    SizedBox(height: 12.0),
                    BTextField(controller: _passwordController, labelText: "Password", obscureText: true),
                    ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                            FlatButton(
                                child: Text("CANCEL"),
                                onPressed: cancelLogin,
                            ),
                            RaisedButton(
                                child: Text("NEXT"),
                                onPressed: (){
                                    Navigator.pop(context);
                                },
                            )
                        ],
                    )
                ],
            )
            )
        );
    }

    void cancelLogin(){
        _usernameController.clear();
        _passwordController.clear();
    }
}