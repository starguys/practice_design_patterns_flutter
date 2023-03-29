import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayOut extends StatelessWidget {
  const LayOut(
      {super.key, required this.child, this.appBar, this.isCanBack = false});

  final Widget child;
  final AppBar? appBar;
  final bool isCanBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isCanBack ? renderAppBar(context) : appBar,
      body: child,
    );
  }
}

AppBar renderAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        context.pop();
      },
      child: Center(child: Icon(Icons.arrow_back_ios)),
    ),
  );
}
