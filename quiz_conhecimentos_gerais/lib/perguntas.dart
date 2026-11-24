
class Pergunta {
  final String enunciado;
  final Map<String, String> alternativas;
  final String correta;

  const Pergunta({
    required this.enunciado,
    required this.alternativas,
    required this.correta,
  });
}

final List<Pergunta> perguntas = [
  Pergunta(
    enunciado: 'Qual é a capital do Brasil?',
    alternativas: {
      'A': 'Rio de Janeiro',
      'B': 'Brasília',
      'C': 'São Paulo',
      'D': 'Salvador',
    },
    correta: 'B',
  ),
  Pergunta(
    enunciado: 'Quantos planetas existem no Sistema Solar?',
    alternativas: {
      'A': 'Sete',
      'B': 'Nove',
      'C': 'Oito',
      'D': 'Dez',
    },
    correta: 'C',
  ),
  Pergunta(
    enunciado: 'Qual é o maior oceano do planeta?',
    alternativas: {
      'A': 'Oceano Pacífico',
      'B': 'Oceano Atlântico',
      'C': 'Oceano Índico',
      'D': 'Oceano Ártico',
    },
    correta: 'A',
  ),
  Pergunta(
    enunciado: 'Quem escreveu O Pequeno Príncipe?',
    alternativas: {
      'A': 'Machado de Assis',
      'B': 'Monteiro Lobato',
      'C': 'Antoine de Saint-Exupéry',
      'D': 'José de Alencar',
    },
    correta: 'C',
  ),
  Pergunta(
    enunciado: 'Qual é o resultado de 9 x 7?',
    alternativas: {
      'A': '56',
      'B': '63',
      'C': '72',
      'D': '49',
    },
    correta: 'B',
  ),
  Pergunta(
    enunciado: 'Qual gás as plantas absorvem na fotossíntese?',
    alternativas: {
      'A': 'Oxigênio',
      'B': 'Hidrogênio',
      'C': 'Nitrogênio',
      'D': 'Gás carbônico',
    },
    correta: 'D',
  ),
];
