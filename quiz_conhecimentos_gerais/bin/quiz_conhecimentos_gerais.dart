
import 'dart:io';
import 'package:quiz_conhecimentos_gerais/perguntas.dart';

void main() {
  print('================================');
  print('   QUIZ DE CONHECIMENTOS GERAIS');
  print('================================');
  print('Bem-vindo ao nosso jogo!');

  stdout.write('Digite seu nome: ');
  String nome = stdin.readLineSync() ?? 'Jogador';

  int acertos = 0;

  for (int i = 0; i < perguntas.length; i++) {
    final pergunta = perguntas[i];

    print('\nPergunta ${i + 1}:');
    print(pergunta.enunciado);

    print('A) ${pergunta.alternativas['A']}');
    print('B) ${pergunta.alternativas['B']}');
    print('C) ${pergunta.alternativas['C']}');
    print('D) ${pergunta.alternativas['D']}');

    String resposta = '';

    while (!['A', 'B', 'C', 'D'].contains(resposta)) {
      stdout.write('Digite sua resposta: ');
      resposta = (stdin.readLineSync() ?? '')
          .trim()
          .toUpperCase();

      if (!['A', 'B', 'C', 'D'].contains(resposta)) {
        print('Alternativa inválida! Tente novamente.');
      }
    }

    if (resposta == pergunta.correta) {
      print('Parabéns, $nome! Você acertou!');
      acertos++;
    } else {
      print('Resposta incorreta!');
      print('A resposta correta era: '
          '${pergunta.correta}) '
          '${pergunta.alternativas[pergunta.correta]}');
    }
  }

  print('\n================================');
  print('           RESULTADO');
  print('================================');

  print('$nome, você acertou $acertos '
      'de ${perguntas.length} perguntas!');

  double percentual = acertos / perguntas.length * 100;

  if (percentual == 100) {
    print('Excelente! Você gabaritou!');
  } else if (percentual >= 60) {
    print('Muito bem! Você foi muito bem!');
  } else if (percentual >= 40) {
    print('Bom esforço! Continue estudando!');
  } else {
    print('Não desista! Tente novamente!');
  }

  print('Obrigado por participar, $nome!');
}
