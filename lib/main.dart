import 'package:flutter/material.dart';
import 'package:na_roca_diferenciado/routes.dart';
import 'package:na_roca_diferenciado/screens/entrar.dart';
import 'package:na_roca_diferenciado/screens/menu.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 250,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScaleDown(600, name: MOBILE),
            const ResponsiveBreakpoint.autoScaleDown(1000, name: TABLET),
            const ResponsiveBreakpoint.autoScaleDown(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return const Entrar();
            case Routes.menu:
              return const Menu();
            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
