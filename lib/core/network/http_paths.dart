class HttpPaths {
  static const baseUrl = 'https://lk-dev.kudanamore.ru/rest_api/v1';

  /// Calendar
  static const getRooms = '$baseUrl/calendar/?accomodation_ids=15219';
  static const getReservation = '$baseUrl/reservations/?accomodation_ids=15219';

  /// Auth
  static const authorization = '$baseUrl/auth/login/';
}
