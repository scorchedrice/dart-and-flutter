import 'package:flutter/material.dart';
import 'package:flutter_library/components/buttons/atom_button.dart';
import 'package:go_router/go_router.dart'; // router import

class MechanismHome extends StatelessWidget {
  const MechanismHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mechanism'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AtomButton(
              width: Width.m,
              height: Height.m,
              shape: Shape.rectangle,
              backgroundColor: Colors.amber[300],
              borderColor: null,
              foregroundColor: Colors.black,
              fontSize: 16,
              onPressed: () => context.go('/mechanism/lifecycle'),
              child: const Text('LifeCycle'),
            ),
          ],
        ),
      ),
    );
  }
}
