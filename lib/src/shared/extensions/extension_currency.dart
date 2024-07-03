import 'package:intl/intl.dart';

extension CurrencyExtension on num {
  String toCurrency({
    int? digit,
    String? locale,
    String? symbol,
    String? name,
    String? customPattern,
  }) {
    final formatted = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: digit,
      name: name,
      customPattern: customPattern,
    );
    return formatted.format(this);
  }

  String toIDR({int digit = 0, bool useSymbol = false}) {
    return toCurrency(digit: digit, locale: 'id_ID', symbol: useSymbol ? 'Rp.' : null);
  }

  String toUSD({int digit = 2, bool useSymbol = true}) {
    return toCurrency(digit: digit, locale: 'en_US', symbol: useSymbol ? '\$' : null);
  }
}
