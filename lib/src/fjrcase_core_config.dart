import 'package:asyncstate/asyncstate.dart';
import 'package:fjrcase_flutterweb_core/src/loader/fjrcase_loader.dart';
import 'package:fjrcase_flutterweb_core/src/theme/fjrcase_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FjrCaseCoreConfig extends StatelessWidget {
  const FjrCaseCoreConfig(
      {this.bindings,
      super.key,
      this.pages,
      this.pageBuilders,
      this.modules,
      required this.title});

  final ApplicationBindings? bindings;
  final List<FlutterGetItPageRouter>? pages;
  final List<FlutterGetItPageBuilder>? pageBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      debugMode: kDebugMode,
      bindings: bindings,
      pages: [...pages ?? [], ...pageBuilders ?? []],
      modules: [...modules ?? []],
      builder: (context, routes, flutterGetItObserver) {
        return AsyncStateBuilder(
            loader: FjrCaseLoader(),
            builder: (navigationObserver) {
              return MaterialApp(
                theme: FjrCaseTheme.lightTheme,
                darkTheme: FjrCaseTheme.darkTheme,
                title: title,
                routes: routes,
                navigatorObservers: [flutterGetItObserver, navigationObserver],
                onGenerateRoute: (settings) {
                  final uri = Uri.parse(settings.name!);

                  if (routes.containsKey(uri.path)) {
                    return MaterialPageRoute(
                      builder: routes[uri.path]!,
                      settings: RouteSettings(
                        arguments: uri.queryParametersAll,
                        name: settings.name,
                      ),
                    );
                  }
                  if (uri.path == '/orderSuccess') {
                    return MaterialPageRoute(
                      builder: routes['/orderSuccess']!,
                      fullscreenDialog: true,
                      barrierDismissible: true,
                      settings: RouteSettings(
                        arguments: uri.queryParametersAll,
                        name: settings.name,
                      ),
                    );
                  }
                  return MaterialPageRoute(
                    builder: routes['/']!,
                    settings: RouteSettings(
                      arguments: uri.queryParametersAll,
                      name: settings.name,
                    ),
                  );
                },
              );
            });
      },
    );
  }
}
