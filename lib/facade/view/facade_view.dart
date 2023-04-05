import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';

class FacadeView extends StatefulWidget {
  static String get routeName => 'facade';
  const FacadeView({super.key});

  @override
  State<FacadeView> createState() => _FacadeViewState();
}

class _FacadeViewState extends State<FacadeView> {
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
            MyWidgetFacade.createMyWidget(
                title: 'Facade Design Pattern', message: 'good!'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MyWidgetFacade {
  static Widget createMyWidget({
    required String title,
    required String message,
  }) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            message,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
