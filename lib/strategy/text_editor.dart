import 'package:practice_design_patterns_flutter/strategy/text_formatter.dart';

class TextEditor {
  TextFormatter _formatter;

  TextEditor(this._formatter);

  TextFormatter get formatter => _formatter;

  void setFormatter(TextFormatter formatter) {
    _formatter = formatter;
  }

  String format(String text) {
    return _formatter.format(text);
  }
}
