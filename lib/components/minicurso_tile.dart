import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitoria/models/miniCursos.dart';

class MiniCursosTile extends StatelessWidget{
  
  final MiniCurso miniCursos;
  const MiniCursosTile(this.miniCursos);
  
  @override
  Widget build(BuildContext){
    final imagem = CircleAvatar(backgroundImage: NetworkImage(miniCursos.imagemUrl));
    return ListTile(
      leading: imagem,
      title: Text(miniCursos.nome),
      subtitle: Text(miniCursos.descricao),
      trailing: Container(
        width: 100,
        child: Row(
            children: <Widget>[
            IconButton( 
              icon: Icon(Icons.edit),
              color: Colors.amber,
              onPressed: (){},
              ),
              IconButton( 
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){},
              ),
          ],
        ),
      ),
    );
  }
}