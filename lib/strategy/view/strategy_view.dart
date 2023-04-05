import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:practice_design_patterns_flutter/common/layout/layout.dart';
import 'package:practice_design_patterns_flutter/strategy/text_editor.dart';
import 'package:practice_design_patterns_flutter/strategy/text_formatter.dart';

class StrategyView extends StatefulWidget {
  static String get routeName => 'strategy';
  const StrategyView({super.key});

  @override
  State<StrategyView> createState() => _StrategyViewState();
}

class _StrategyViewState extends State<StrategyView> {
  final TextEditor _textEditor = TextEditor(UpperCaseFormatter());
  String _formattedText = '';

  void _formatAndDisplay(String text) {
    setState(() {
      _formattedText = _textEditor.format(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayOut(
      title: 'Strategy',
      isCanBack: true,
      child: Column(
        children: [
          TextField(
            onChanged: (text) => _formatAndDisplay(text),
          ),
          Text(_formattedText),
          Text(_textEditor.format(_formattedText)),
          Text(_textEditor.formatter.toString()),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _textEditor.setFormatter(
                      _textEditor.formatter is UpperCaseFormatter
                          ? LowerCaseFormatter()
                          : UpperCaseFormatter());
                });
                if (kDebugMode) {
                  print(_textEditor.formatter is UpperCaseFormatter);
                }
              },
              child: const Text('Toggle Formatter'))
        ],
      ),
    );
  }
}
