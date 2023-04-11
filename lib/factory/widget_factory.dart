import 'package:flutter/material.dart';

abstract class WidgetFactory {
  Widget create();
}

class TextFactory implements WidgetFactory {
  final String text;

  TextFactory(this.text);

  @override
  Widget create() {
    return Text(text);
  }
}

class IconFactory implements WidgetFactory {
  final IconData icon;

  IconFactory(this.icon);

  @override
  Widget create() {
    return Icon(icon);
  }
}
