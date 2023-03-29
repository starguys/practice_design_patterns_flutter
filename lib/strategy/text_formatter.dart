abstract class TextFormatter {
  String format(String text);
}

class UpperCaseFormatter implements TextFormatter {
  @override
  String format(String text) {
    return text.toUpperCase();
  }
}

class LowerCaseFormatter implements TextFormatter {
  @override
  String format(String text) {
    return text.toLowerCase();
  }
}
