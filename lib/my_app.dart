import 'package:flutter/material.dart';

import 'package:flutter_navigation/home.dart';
import 'package:flutter_navigation/sub_widget/name_route.dart';

import 'sub_widget/generate_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/name': (context) => const NameRouteWidget(),
      },
      home: const HomeWidet(),
      onGenerateRoute: generateRoute,
    );
  }
}

Route<Widget> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case '/onGenerate':
      {
        String value = routeSettings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => GenerateRoute(
                  title: value,
                ));
      }

    default:
      return MaterialPageRoute(
          builder: (_) => const MaterialApp(
                home: Text('Empty Screen'),
              ));
  }
}
