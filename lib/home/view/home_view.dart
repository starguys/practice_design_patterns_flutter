import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:practice_design_patterns_flutter/common/layout/layout.dart';
import 'package:practice_design_patterns_flutter/facade/view/facade_view.dart';
import 'package:practice_design_patterns_flutter/state/view/state_view.dart';
import 'package:practice_design_patterns_flutter/strategy/view/strategy_view.dart';

class HomeView extends StatelessWidget {
  static String get routeName => 'home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double btnWidth = 150;
    return LayOut(
        child: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: btnWidth,
              child: ElevatedButton(
                onPressed: () => context.goNamed(StrategyView.routeName),
                child: const Text('Strategy'),
              ),
            ),
            SizedBox(
              width: btnWidth,
              child: ElevatedButton(
                onPressed: () => context.goNamed(StateView.routeName),
                child: const Text('State'),
              ),
            ),
            SizedBox(
              width: btnWidth,
              child: ElevatedButton(
                onPressed: () => context.goNamed(FacadeView.routeName),
                child: const Text('Facade'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
