import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_design_patterns_flutter/abstract_factory/view/abstrract_factory_view.dart';
import 'package:practice_design_patterns_flutter/command/view/command_view.dart';
import 'package:practice_design_patterns_flutter/facade/view/facade_view.dart';
import 'package:practice_design_patterns_flutter/factory/view/factory_view.dart';
import 'package:practice_design_patterns_flutter/home/view/home_view.dart';
import 'package:practice_design_patterns_flutter/state/view/state_view.dart';
import 'package:practice_design_patterns_flutter/strategy/view/strategy_view.dart';

final routesProvider =
    ChangeNotifierProvider((ref) => RoutesProvider(ref: ref));

class RoutesProvider extends ChangeNotifier {
  RoutesProvider({required this.ref});
  final Ref ref;

  List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          name: HomeView.routeName,
          builder: (_, __) => const HomeView(),
          routes: [
            GoRoute(
              path: 'strategy',
              name: StrategyView.routeName,
              builder: (_, __) => const StrategyView(),
            ),
            GoRoute(
              path: 'state',
              name: StateView.routeName,
              builder: (_, __) => const StateView(),
            ),
            GoRoute(
              path: 'facade',
              name: FacadeView.routeName,
              builder: (_, __) => const FacadeView(),
            ),
            GoRoute(
              path: 'factory',
              name: FactoryView.routeName,
              builder: (_, __) => const FactoryView(),
            ),
            GoRoute(
              path: 'abstract_factory',
              name: AbstractFactoryView.routeName,
              builder: (_, __) => const AbstractFactoryView(),
            ),
            GoRoute(
              path: 'command',
              name: CommandView.routeName,
              builder: (_, __) => const CommandView(),
            )
          ],
        )
      ];
}
