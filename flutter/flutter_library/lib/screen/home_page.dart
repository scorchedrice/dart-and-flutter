import 'package:flutter/material.dart';
import 'package:flutter_library/components/buttons/atom_button.dart';
import 'package:go_router/go_router.dart'; // router import

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library of Flutter'),
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
              onPressed: () {},
              child: const Text('Setting of Flutter'),
            ),
            AtomButton(
              width: Width.m,
              height: Height.m,
              shape: Shape.rectangle,
              backgroundColor: Colors.amber[300],
              borderColor: null,
              foregroundColor: Colors.black,
              fontSize: 16,
              onPressed: () => context.go('/mechanism'),
              child: const Text('Mechanism'),
            ),
            AtomButton(
              width: Width.m,
              height: Height.m,
              shape: Shape.rectangle,
              backgroundColor: Colors.amber[300],
              borderColor: null,
              foregroundColor: Colors.black,
              fontSize: 16,
              onPressed: () {},
              child: const Text('Application'),
            ),
            AtomButton(
              width: Width.m,
              height: Height.m,
              shape: Shape.rectangle,
              backgroundColor: Colors.amber[300],
              borderColor: null,
              foregroundColor: Colors.black,
              fontSize: 16,
              onPressed: () {},
              child: const Text('Component'),
            )
          ],
        ),
      ),
    );
  }
}
