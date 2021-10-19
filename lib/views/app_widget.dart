import 'dart:html';
import 'package:flutter/material.dart';
import 'package:monitoria/models/miniCursos.dart';
import 'package:monitoria/provider/miniCursosProvider.dart';
import 'home.dart';
import 'login.dart';
import 'minicurso_list.dart';
import 'monitorias.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (ctx) =>MiniCursos(),
        child: MaterialApp(  
          theme: ThemeData(primarySwatch: Colors.purple),
          routes: {
            '/': (context) => Home(),
            '/cursos': (context) => MiniCursoList(),
            '/monitorias': (context) => Monitorias(),
            //'/home': (context) => Home(),
          },
        ),    
    );      
  }
}