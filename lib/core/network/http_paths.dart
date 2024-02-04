class HttpPaths {
  static const baseUrl = 'http://34.94.101.144/api/v1';

  /// Auth
  static const authorization = '$baseUrl/accounts/login/';
  static refreshToken(String token) => '$baseUrl/accounts/refresh/$token';

  /// Products
  static const getAcceptance = '$baseUrl/products/acceptance';
  static const getStorages = '$baseUrl/products/storages';
}
