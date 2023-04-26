import 'package:flutter/material.dart';

abstract class Command {
  void execute();
}

class IncreaseCounterCommand implements Command {
  final Counter _counter;

  IncreaseCounterCommand(this._counter);

  @override
  void execute() {
    _counter.increase();
  }
}

class DecreaseCounterCommand implements Command {
  final Counter _counter;

  DecreaseCounterCommand(this._counter);

  @override
  void execute() {
    _counter.decrease();
  }
}

class Counter {
  int _value = 0;

  int get value => _value;

  void increase() {
    _value++;
    print("Counter increased: $_value");
  }

  void decrease() {
    _value--;
    print("Counter decreased: $_value");
  }
}

class CounterButton extends StatelessWidget {
  final Command command;
  final String label;

  const CounterButton({
    super.key,
    required this.command,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => command.execute(),
      child: Text(label),
    );
  }
}
