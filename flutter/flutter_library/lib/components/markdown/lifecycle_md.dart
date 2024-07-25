import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class LifecycleMd extends StatefulWidget {
  const LifecycleMd({super.key});

  @override
  State<LifecycleMd> createState() => _LifecycleMdState();
}

class _LifecycleMdState extends State<LifecycleMd> {
  String _text = '';

  @override
  void initState() {
    super.initState();
    _loadMarkdownFile();
  }

  Future<void> _loadMarkdownFile() async {
    try {
      final String content =
          await rootBundle.loadString('assets/markdown/lifecycle.md');
      setState(() {
        _text = content;
      });
    } catch (e) {
      setState(() {
        _text = 'Error loading markdown file : $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}
