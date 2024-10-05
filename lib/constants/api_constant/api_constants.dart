class ApiConstant {
  const ApiConstant._();

  static const defaultConnectTimeout = Duration.millisecondsPerMinute;
  static const defaultReceiveTimeout = Duration.millisecondsPerMinute;

  // TODO : Update this domain
   static const String domain = 'https://one-click-backend.onrender.com/api';
  //static const String domain = 'localhost:8000/api';


  static const String baseUrl = 'http://$domain';
  static const String login = '/user/login';
  static const String getUser = '/user/display';

}
