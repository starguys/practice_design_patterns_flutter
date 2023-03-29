import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:practice_design_patterns_flutter/common/provider/routes_provider.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final provider = ref.read(routesProvider);
  return GoRouter(
    routes: provider.routes,
    initialLocation: '/',
    refreshListenable: provider,
  );
});

final testProvider = Provider<String>((ref) {
  return 'test';
});
