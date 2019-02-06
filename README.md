# 앵귤러 다트를 사용한 웹사이트 제작 가이드
> [AngularDart Guid](https://webdev.dartlang.org/angular/guide)를 따라하는 저장소

앵귤러 다트 홈페이지에서 제공하는 가이드를 따라하는 저장소 입니다. 커밋 별로
각 기능을 구현하고 있으며, 연습이 끝날 때 마다 코드가 추가됩니다.

홈페이지에 설명이 자세하게 나와있으므로 주석은 거의 사용하지 않습니다. 해설이
필요하신 경우는 홈페이지를 직접 참고하길 추천합니다. 질문이 있을 경우는 이슈를
사용해주세요.

필자의 경우 앵귤러 와 웹다트 모두 처음이므로 코드에 미숙함이 있을 수 있습니다.
예제 코드와 관련하여 연습중에 발생한 오류나 이슈가 있을 경우, README에 요약합니다.

## 디렉토리 구조

`lib/src` 폴더에 곧바로 작성된 코드의 경우 가이드의 1에서 7챕터까지의 예제를 담고
있습니다. `lib/src/car_without_injector` 폴더에 작성된 코드의 경우, 가이드 챕터 8의
초반 `Car` 예제를 담고 있습니다. 나머지 `heroes`에 있는 코드는, 가이드 챕터 8의
`Car` 예제 이후 부분을 담고 있습니다.

## Provider 변경시 주의 사항

webdev에 의한 auto reload는 provider를 변경할 시에 제대로 동작하지 않을 수 있음.
이는 이미 기존에 컴파일된 인스턴스에 다시 인젝션을 시도하기 때문이므로, provider를
수정한 뒤에 `Arguments of a constant creation must be constant expressions.`
와 같은 에러가 날 경우 webdev를 종료하고 다시 수행하길 권장함.

## GUIDE의 Template Syntax 챕터

해당 챕터는 본 저장소에서 다루지 않습니다. 직접 읽어보고 실습하길 권장합니다.
[Tmpelate Syntax](https://webdev.dartlang.org/angular/guide/template-syntax)

## 사용 환경

본 프로젝트는 Webstorm을 사용하였습니다. 다트 및 웹데브 관련 툴킷을 정상 설치 하였다면
어느 IDE나 에디터로든 구동 가능합니다.
