import 'package:flutter/material.dart';
import 'package:pomodoro/components/BotaoPomodoro.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
    required this.inc,
    required this.dec,
  });

  @override
  Widget build(BuildContext context) {
    Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoPomodoro(
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              onpress: dec,
            ),
            Text(
              '$valor min',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            BotaoPomodoro(
              icon: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              onpress: inc,
            ),
          ],
        ),
      ],
    );
  }
}
