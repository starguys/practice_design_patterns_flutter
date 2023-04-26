import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';

class AbstractFactoryView extends StatelessWidget {
  static String get routeName => 'abstract_factory';
  const AbstractFactoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayOut(
      title: 'AbstractFactory',
      isCanBack: true,
      child: Container(),
    );
  }
}
