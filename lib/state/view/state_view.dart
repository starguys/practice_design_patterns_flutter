import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';
import 'package:practice_design_patterns_flutter/state/handle_state.dart';

class StateView extends StatefulWidget {
  static String get routeName => 'state';
  const StateView({super.key});

  @override
  State<StateView> createState() => _StateViewState();
}

class _StateViewState extends State<StateView> {
  HandleState _handleState = HandleLeftState();

  void _changeState() {
    setState(() {
      _handleState = _handleState is HandleLeftState
          ? HandleRightState()
          : HandleLeftState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayOut(
      title: 'State',
      isCanBack: true,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _handleState.render(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _changeState(),
              child: const Text('Change State'),
            ),
          ],
        ),
      ),
    );
  }
}
