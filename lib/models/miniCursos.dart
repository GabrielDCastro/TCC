import 'package:flutter/material.dart';

class MiniCurso{
  final String id;
  final String nome;
  final String descricao;
  final String topicos;
  final String cargaHoraria;
  final String imagemUrl;

  const MiniCurso({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.topicos,
    required this.cargaHoraria,
    required this.imagemUrl,
  });
}