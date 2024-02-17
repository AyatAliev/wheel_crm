class HttpPaths {
  static const baseUrl = 'http://34.94.101.144/api/v1';

  /// Auth
  static const authorization = '$baseUrl/accounts/login/';
  static const refreshToken = '$baseUrl/accounts/refresh/';

  /// Products
  static const acceptance = '$baseUrl/products/acceptance/';
  static const getStorages = '$baseUrl/products/storages';
  static getWheelById(int wheelId) => '$baseUrl/products/wheels/$wheelId';
  static getStoryById(int storageId) => '$baseUrl/products/storages/$storageId';
}
