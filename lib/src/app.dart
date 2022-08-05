import 'package:alpha/src/pages/pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:alpha/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'themes/color_schemes.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      scrollBehavior: MouseScrollBehavior(),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: <Locale>[...L10n.delegate.supportedLocales],
      onGenerateTitle: (final BuildContext context) => L10n.of(context).appTitle,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        iconTheme: IconThemeData(
          color: lightColorScheme.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        iconTheme: IconThemeData(
          color: darkColorScheme.primary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (final RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (final BuildContext context) {
            switch (routeSettings.name) {
              case AmharicPage.routeName:
                return const AmharicPage();
              case ArabicPage.routeName:
                return const ArabicPage();
              case EnglishPage.routeName:
                return const EnglishPage();
              case SettingsPage.routeName:
                return const SettingsPage();
              case HomePage.routeName:
              default:
                return const HomePage();
            }
          },
        );
      },
    );
  }
}

class MouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
