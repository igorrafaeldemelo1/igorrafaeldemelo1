import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Tela de Login", style: TextStyle(fontSize: 30), ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Image.asset("imagen/ola.png"),
            Text("Digite seu email e senha:",
              style: TextStyle(fontSize: 30),

            ),

            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "email"),
                obscureText: false,

              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "senha"),
                maxLength: 8,
                obscureText: false,

              ),
            ),RaisedButton(
              child: Text("Logar"),
              color: Colors.black45,
              onPressed: () {
                print("Logado");
              },
            ),
          ],


        ),
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.all(12),

        ),
      ),//rodapé
    ),
  ),
  );
}