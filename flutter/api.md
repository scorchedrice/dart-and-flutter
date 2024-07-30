# API로부터 정보를 받아오는 과정

## async - await
- async : 비동기 함수의 정의
- await : 비동기 작업의 결과를 기다릴 때 활용

## Future
- 비동기 작업의 결과를 나타내는 객체
- 작업이 완료되면 값을 반환

# 그러면 비동기 통신을 진짜 하는 이유는 무엇인가?
1. 가독성
2. 에러처리의 간소화
3. 순차적 실행 보장
4. 앱의 반응성 유지
5. 코드 작성 및 디버깅 용이

```dart
// async/await 사용
Future<void> getUserData() async {
  try {
    String userId = await fetchUserId();
    String userName = await fetchUserName(userId);
    print('사용자 이름: $userName');
  } catch (e) {
    print('에러 발생: $e');
  }
}

// async/await 없이 사용 - 가독성이 낮고 문제 발생시 파악하기 어려움.
void getUserDataWithoutAsync() {
  fetchUserId().then((userId) {
    fetchUserName(userId).then((userName) {
      print('사용자 이름: $userName');
    }).catchError((e) {
      print('에러 발생: $e');
    });
  }).catchError((e) {
    print('에러 발생: $e');
  });
}
```

### Example
```dart
// Future<dynamic> : 비동기 작업 결과 객체가 dynamic이다.
// async ... await : 비동기 함수의 정의
Future<dynamic> checkNicknameDuplication(String nickname) async {
    var dio = DioSingleton().dio;
    var response = await dio.post("/api/v1/users/nickname"), data: {"nickname": nickname}
}
```

## DioSingleton()
- API에 접근하는 방법 중 하나
- 앱 어디에서나 Dio객체를 쉽게 사용할 수 있으며,
- **일관성** 있게 모든 API 요청에 같은 설정을 적용할 수 있다.
- Dio객체를 여러번 만들지 않기에, 메모리 절약이 가능하다.

### API에 접근하는 다른 방법들
1. http 패키지 사용
- example : http.get(Uri.parse('https://api...'));
2. 각 화면에서 Dio 객체 생성
- example : Dio dio = Dio(); dio.get('https://api...');
3. 서비스 클래스 사용
- API로직을 별도 클래스로 분리하는 것
```dart
// example
class ApiService {
    final Dio _dio = Dio();
    Future<Response> getData() => _dio.get('/data');
}
```
4. GetX와 Provider와 같은 상태관리 라이브러리의 활용
- 상태 관리와 API호출을 통합할 수 있다!
5. GraphQL 클라이언트 활용
- 단, 이 경우는 Rest API 대신 GraphQL을 사용하는 경우에 적합하다.