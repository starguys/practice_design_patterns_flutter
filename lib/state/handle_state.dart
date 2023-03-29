import 'package:flutter/material.dart';

abstract class HandleState {
  Widget render();
}

class HandleLeftState implements HandleState {
  @override
  Widget render() {
    return const Text('Left');
  }
}

class HandleRightState implements HandleState {
  @override
  Widget render() {
    return const Text('Right');
  }
}
