import 'package:flutter/material.dart';

class GenerateRoute extends StatefulWidget {
  final String title;
  const GenerateRoute({Key? key, required this.title}) : super(key: key);

  @override
  State<GenerateRoute> createState() => _GenerateRouteWidgetState();
}

class _GenerateRouteWidgetState extends State<GenerateRoute> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Name Route'),
      ),
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
