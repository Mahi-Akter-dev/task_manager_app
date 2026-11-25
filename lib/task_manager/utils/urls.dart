class TMUrls {
  static String baseURL = 'https://task-manager-api.ostad.live/api/v1';
  static String SignUpURL = '$baseURL/Registration';
  static String LoginURL = '$baseURL/Login';
  static String taskStatusCountURL = '$baseURL/taskStatusCount';
  static String taskListByStatusURL(String status) =>
      '$baseURL/listTaskByStatus/$status';
}
