import 'package:flutter/material.dart';
import 'package:flutter_library/components/markdown/lifecycle_md.dart';

class LifeCycle extends StatelessWidget {
  const LifeCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mechanism - LifeCycle'),
      ),
      body: Column(
        children: [
          Text('~~'),
          LifecycleMd(),
        ],
      ),
    );
  }
}
