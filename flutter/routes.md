# routes를 사용
- go router , Get.toNamed 등 다양한 방법 존재
- common - routes.dart 에 내용을 정리하고 이를 활용하는 것이 좋은 것 같다.

## Get.toNamed
- GetPage를 활용하기 위해선 MaterialApp이 아닌 GetMaterialApp으로 return 받아야 한다.
```dart
// main.dart
// ...
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return GetMaterialApp(
            initialRoute: '/',
            getPages: Routes.routes,
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: currentMode,
          );
        });
```

```dart
// common - routes.dart
class Routes {
  static final routes = [
    GetPage(name: '/', page: () => HomePage()),
    GetPage(
        name: '/mechanism',
        page: () => MechanismHome(),
        children: [GetPage(name: '/lifecycle', page: () => LifeCycle())]),
    // .........................
  ];
}
```
