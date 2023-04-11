import 'package:flutter/material.dart';
import 'package:practice_design_patterns_flutter/common/layout/layout.dart';
import 'package:practice_design_patterns_flutter/factory/widget_factory.dart';

class FactoryView extends StatelessWidget {
  static String get routeName => 'factory';
  const FactoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgetFactories = <WidgetFactory>[
      TextFactory('Hello!!!'),
      IconFactory(Icons.star),
      TextFactory('Hello!!!'),
      IconFactory(Icons.star),
    ];
    return LayOut(
      title: 'Factory',
      isCanBack: true,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: widgetFactories.map((e) => e.create()).toList(),
        ),
      ),
    );
  }
}
