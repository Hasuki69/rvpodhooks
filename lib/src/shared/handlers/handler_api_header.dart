class APIHeader {
  const APIHeader._();

  static Map<String, String>? json({String? token}) {
    return {
      'Content-Type': 'application/json; charset=utf-8',
      if (token != null) 'X-Auth-Token': token,
    };
  }
}
