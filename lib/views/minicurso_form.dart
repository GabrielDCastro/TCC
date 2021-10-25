import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitoria/models/miniCursos.dart';
import 'package:monitoria/provider/miniCursosProvider.dart';
import 'package:provider/provider.dart';

class MiniCursoForm extends StatelessWidget{

  TextEditingController txtnome = TextEditingController();
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Minicurso'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState!.validate();
              if(isValid){
                _form.currentState!.save();
                Provider.of<MiniCursos>(context, listen: false).put(MiniCurso(
                  id: _formData['id'] ?? "",
                  nome: _formData['nome'] ?? "",
                  descricao: _formData['descricao'] ?? "",
                  topicos: _formData['topicos'] ?? "",
                  cargaHoraria: _formData['cargaHoraria'] ?? "",
                  imagemUrl: _formData['imagemUrl'] ?? "",
                  dataInicio: _formData['dataInicio'] ?? "",
                  dataFim: _formData['dataFim'] ?? "",
                ));
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextField(
                controller: txtnome,
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: (value) => _formData['nome'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Descricao'),
                onChanged: (value) => _formData['descricao'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Tópicos'),
                onChanged: (value) => _formData['topicos'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Carga Horária'),
                onChanged: (value) => _formData['cargaHoraria'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Url da Imagem'),
                onChanged: (value) => _formData['imagemUrl'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Data de Início'),
                onChanged: (value) => _formData['dataInicio'] = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Data de FIm'),
                onChanged: (value) => _formData['dataFim'] = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}