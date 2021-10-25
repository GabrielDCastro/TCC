import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitoria/data/dummy_minicursos.dart';
import 'package:monitoria/models/miniCursos.dart';

class MiniCursos with ChangeNotifier{
  final Map<String, MiniCurso> _items = {...DUMMY_MINICURSOS};

  List<MiniCurso> get all{
    return[..._items.values];
  }

  int get count{
    return _items.length;
  }

  MiniCurso byIndex(int i){
    return _items.values.elementAt(i);
  }

  void put(MiniCurso miniCurso){
    if(miniCurso == null){
      return;
    }

  if(miniCurso.id !=null && miniCurso.id.trim().isNotEmpty && _items.containsKey(miniCurso.id)){
    _items.update(miniCurso.id, (_) => miniCurso);
  }

  final id=Random().nextDouble().toString();
  _items.putIfAbsent(id, () => MiniCurso(
    id:id,
    nome: miniCurso.nome,
    descricao: miniCurso.descricao,
    topicos: miniCurso.topicos,
    cargaHoraria: miniCurso.cargaHoraria,
    imagemUrl: miniCurso.imagemUrl,
    dataInicio: miniCurso.dataInicio,
    dataFim: miniCurso.dataFim,
  ));
    notifyListeners();
  }

  void remove(MiniCurso miniCurso){
    if(miniCurso != null && miniCurso.id != null){
      _items.remove(miniCurso.id);
      notifyListeners();
    }
  }
}