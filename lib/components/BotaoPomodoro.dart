import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BotaoPomodoro extends StatelessWidget {
  Icon icon = const Icon(
    Icons.arrow_upward,
    color: Colors.white,
  );
  final void Function()? onpress;
  BotaoPomodoro({super.key, required this.icon, this.onpress});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(4),
        backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
      ),
      onPressed: onpress,
      child: icon,
    );
  }
}
