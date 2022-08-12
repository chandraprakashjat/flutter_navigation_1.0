import 'package:flutter/material.dart';

class NameRouteWidget extends StatefulWidget {
  const NameRouteWidget({Key? key}) : super(key: key);

  @override
  State<NameRouteWidget> createState() => _NameRouteWidgetState();
}

class _NameRouteWidgetState extends State<NameRouteWidget> {
  late String title;
  @override
  void initState() {
    super.initState();

//error
    // title = ModalRoute.of(context)!.settings.arguments as String;
  }

  @override
  void didChangeDependencies() {
    title = ModalRoute.of(context)!.settings.arguments as String;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //title = ModalRoute.of(context)!.settings.arguments as String; :- will also work
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Name Route'),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
