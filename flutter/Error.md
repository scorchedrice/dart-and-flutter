# GL error
- flutter run 하는 경우 클릭은 가능하나 화면이 보이지 않는 경우
  - 랜더링은 되어있으나 표시 X
## GL error 해결방안
1. GPU 렌더링 비활성화
```
flutter run --disable-gpu
```
2. 소프트웨어 렌더링 강제
```
flutter run --enable-software-rendering
```
3. 디버그 모드 실행
```
flutter run --debug
```
4. 웹모드 실행
```
flutter run -d chrome
```
5. clean => pub get
6. flutter upgrade
