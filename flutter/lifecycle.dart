import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key, required this.initialText});

  final String initialText;

  // 1. Stateful Widget이 생성됩니다.
  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  late String _text;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _text = widget.initialText;
    print('위젯의 초기 텍스트를 설정합니다.');
    // 2. Widget이 생성된 이후 초기화를 진행합니다.

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('의존성이 변경되었습니다.')
    // 3. initState이후 호출되며, 의존성이 변경될 때 마다 호출됩니다.
  }


  // 4. Build
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_text),
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        )
      ]
    )
  }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
