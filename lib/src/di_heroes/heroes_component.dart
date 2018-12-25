import 'package:angular/angular.dart';
import 'hero_list_component.dart';
import 'user_service.dart';
import 'hero_service_provider.dart';

// Map 인젝션 대신에 클래스를 사용하기
import 'app_config.dart';

// String 등과 같은 generic 타입에 인젝터 프로바이더를 제공하고 싶을 때
const appTitleToken = OpaqueToken<String>('app.title');
const appTitle = 'Dependency Injection';
/**
 * 아래와 같은 경우도 가능함.
 * const appConfig = Map<String,string>{
 *  'apiEndpoint': 'api.heroes.com',
 * }
 * const appConfigToken = OpaqueToken<Map>('app.config');
**/

@Component(
  selector: 'my-heroes',
  template: '''
    <h1>{{appTitle}}: {{apiEndpoint}}</h1>
    <h2>Heroes</h2>
    <hero-list></hero-list>
  ''',
  directives: [HeroListComponent],
  providers: [
    ClassProvider(UserService),
    heroServiceProvider,
    // 지정한 토큰 값에 프로바이더를 설정한다
    ValueProvider.forToken(appTitleToken, appTitle),
    FactoryProvider(AppConfig, appConfigFactory),
  ]
)
class HeroesComponent {
  // Generic type 프로바이더 예제
  final String _appTitle;
  final String _apiEndpoint;
  String get appTitle => _appTitle;
  String get apiEndpoint => _apiEndpoint;

  HeroesComponent(@Inject(appTitleToken) this._appTitle,
                  AppConfig config): _apiEndpoint = config.apiEndpoint;
  // 혹은 아래와 같은 방식도 가능
  // HeroesComponent(@appTitleToken this._appTitle);
}
