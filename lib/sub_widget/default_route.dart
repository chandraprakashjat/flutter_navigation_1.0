import 'package:flutter/material.dart';

class DefaultRouteWidget extends StatelessWidget {
  final String value;
  const DefaultRouteWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Default Route'),
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }
}
