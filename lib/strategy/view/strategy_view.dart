import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';

class StrategyView extends StatelessWidget {
  static String get routeName => 'strategy';
  const StrategyView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayOut(
      isCanBack: true,
      child: Container(),
    );
  }
}
