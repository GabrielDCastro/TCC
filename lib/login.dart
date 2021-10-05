import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState(){
    return LoginState();
  }
}

class LoginState extends State<Login>{
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo.png'),
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Text('Monitoria'),
                ),
                
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                    ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                    ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if(email == 'teste@gmail.com' && senha == '123'){
                      Navigator.of(context).pushNamed('/home');
                    }
                  },
                  child: const Text('Entrar'),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}