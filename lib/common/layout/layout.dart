import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayOut extends StatelessWidget {
  const LayOut(
      {super.key, required this.child, this.title, this.isCanBack = false});

  final Widget child;
  final String? title;
  final bool isCanBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isCanBack ? renderAppBar(context, title) : null,
      body: child,
    );
  }
}

AppBar renderAppBar(BuildContext context, String? title) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(title ?? ''),
    leading: InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        context.pop();
      },
      child: Center(child: Icon(Icons.arrow_back_ios)),
    ),
  );
}
