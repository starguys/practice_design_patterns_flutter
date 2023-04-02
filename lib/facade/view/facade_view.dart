import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';

class FacadeView extends StatelessWidget {
  static String get routeName => 'facade';
  const FacadeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayOut(
      title: 'Facade',
      isCanBack: true,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Facade Design Pattern'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Facade'),
            ),
          ],
        ),
      ),
    );
  }
}
