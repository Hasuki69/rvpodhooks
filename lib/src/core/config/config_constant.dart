class Config {
  static const String appName = 'Riverpod Hooks Template';
  static const String initRoute = '/';
  static const String fontFamily = 'Roboto';
}

class Endpoint {
  static const String base = 'http://example.com:8080';
}

class Gap {
  static const double tiny = 2.0;
  static const double extraSmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extraLarge = 32.0;
  static const double huge = 48.0;
  static const double extraHuge = 64.0;

  // 4 circle radius
  static const double circle = 90.0;
}

class Regex {
  static final RegExp digit = RegExp(r"^[0]$|^[1-9][0-9]*$");

  static final RegExp digitDecimal =
      RegExp(r"^[+-]?((?!0\.0)[0-9]+([.][0-9]*)?|[.][0-9]+)$");

  static final alphabet = RegExp(r'[a-zA-Z\s]');

  static final alphaNumeric = RegExp(r'[a-zA-Z0-9\s]');
}
