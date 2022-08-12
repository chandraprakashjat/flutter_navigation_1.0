import 'package:flutter/material.dart';
import 'package:flutter_navigation/sub_widget/default_route.dart';
import 'package:flutter_navigation/sub_widget/name_route.dart';

class HomeWidet extends StatelessWidget {
  const HomeWidet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('h');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screens'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) =>
                          const DefaultRouteWidget(value: 'Default Route'))),
              child: const Text('Default Route'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/name',
                  arguments: 'Name Argument'),
              child: const Text('Name Route'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/onGenerate',
                  arguments: 'Generate Argument'),
              child: const Text('Generate Route'),
            ),
          ],
        ),
      ),
    );
  }
}
