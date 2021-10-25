import 'package:monitoria/models/miniCursos.dart';
import 'package:intl/intl.dart';

var now = DateTime.now();
var dataI = DateTime.utc(1989, 11, 9);

const DUMMY_MINICURSOS = {
  '1': const MiniCurso(
    id: '1',
    nome: 'python',
    descricao: 'python basico', 
    topicos: 'print', 
    cargaHoraria: '2',
    imagemUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/1200px-Python.svg.png',
    dataInicio:  "21/10/2021",
    dataFim: "20/12/2021",
    ),
    
};