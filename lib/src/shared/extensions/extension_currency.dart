import 'package:intl/intl.dart';

extension CurrencyExtension on num {
  /// Convert Number to Currency
  ///
  /// [digit] is the number of digits after the decimal point
  ///
  /// [locale] is the locale of the currency
  ///
  /// [symbol] is the currency symbol
  ///
  /// [name] is the currency name
  ///
  /// [customPattern] is the custom pattern of the currency
  ///
  /// By default, the [digit] is 0, the [locale] is 'id_ID', and the [symbol] is 'Rp. ' in Indonesia
  ///
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

  /// Convert number to Indonesian Rupiah (IDR)
  ///
  String toIDR({int digit = 0, bool useSymbol = false}) {
    return toCurrency(
        digit: digit, locale: 'id_ID', symbol: useSymbol ? 'Rp.' : null);
  }

  /// Convert number to US Dollar (USD)
  ///
  String toUSD({int digit = 2, bool useSymbol = true}) {
    return toCurrency(
        digit: digit, locale: 'en_US', symbol: useSymbol ? '\$' : null);
  }
}
