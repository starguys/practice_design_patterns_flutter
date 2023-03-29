import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:practice_design_patterns_flutter/common/layout/layout.dart';
import 'package:practice_design_patterns_flutter/strategy/view/strategy_view.dart';

class HomeView extends StatelessWidget {
  static String get routeName => 'home';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayOut(
        child: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => context.goNamed(StrategyView.routeName),
                  child: Text('Strategy'))
            ],
          ),
        ),
      ),
    ));
  }
}
