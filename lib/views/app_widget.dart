import 'dart:html';
import 'package:flutter/material.dart';
import 'package:monitoria/models/miniCursos.dart';
import 'package:monitoria/provider/miniCursosProvider.dart';
import 'home.dart';
import 'login.dart';
import 'minicurso_form.dart';
import 'minicurso_list.dart';
import 'monitorias.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) =>MiniCursos(),
        )
      ],      
        child: MaterialApp(  
          theme: ThemeData(primarySwatch: Colors.purple),
          routes: {
            '/': (context) => MiniCursoList(), //mudar pra login quando estiver em produção '/': (context) => Login(),
            '/cursos': (context) => MiniCursoList(),
            '/monitorias': (context) => Monitorias(),
            '/minicursoform': (context) => MiniCursoForm(),
            //'/home': (context) => Home(),
          },
        ),    
    );      
  }
}