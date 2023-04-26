import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/command/command_widget.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';

class CommandView extends StatefulWidget {
  static String get routeName => 'command';
  const CommandView({super.key});

  @override
  State<CommandView> createState() => _CommandViewState();
}

class _CommandViewState extends State<CommandView> {
  @override
  Widget build(BuildContext context) {
    final counter = Counter();
    final increaseCommand = IncreaseCounterCommand(counter);
    final decreaseCommand = DecreaseCounterCommand(counter);

    return LayOut(
      title: 'Command',
      isCanBack: true,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter ${Counter().value}'),
            const SizedBox(height: 20),
            CounterButton(command: increaseCommand, label: 'Increase'),
            const SizedBox(height: 20),
            CounterButton(command: decreaseCommand, label: 'Decrease'),
          ],
        ),
      ),
    );
  }
}
