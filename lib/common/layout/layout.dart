import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {
  const LayOut({super.key, required this.child, this.appBar});

  final Widget child;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
    );
  }
}
