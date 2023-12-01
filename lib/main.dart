import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:right/utils/routes.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MainApp(), // Wrap your app
      ),
    );

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: '/SignInPage',
      routes: routes,
    );
  }
}
