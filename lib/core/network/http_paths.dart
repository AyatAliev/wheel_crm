class HttpPaths {
  static const baseUrl = 'http://34.16.154.156/api/v1';

  /// Auth
  static const authorization = '$baseUrl/accounts/login/';
  static const refreshToken = '$baseUrl/accounts/refresh/';

  /// Products
  static const acceptance = '$baseUrl/products/acceptance/';
  static getAcceptanceById(int id) => '$baseUrl/products/acceptance/$id';
  static const getStorages = '$baseUrl/products/storages';
  static getWheelById(int wheelId) => '$baseUrl/products/wheels/$wheelId';
  static getStoryById(int storageId) => '$baseUrl/products/storages/$storageId';

  /// Actions
  static const getActions = '$baseUrl/actions/';
  static getSaleById(int saleId) => '$baseUrl/actions/sales/$saleId';
  static const defect = '$baseUrl/actions/defect';
  static const returned = '$baseUrl/actions/return';
}
