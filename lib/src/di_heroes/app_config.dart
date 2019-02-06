// Map 대신에 Class 사용하기
// cascade notation (..) 을 이용한 팩토리 프로바이더
class AppConfig {
  String apiEndpoint;
  String title;
}

AppConfig appConfigFactory() => AppConfig()..apiEndpoint = 'api.heroes.com'
    ..title = 'Dependency Injection';