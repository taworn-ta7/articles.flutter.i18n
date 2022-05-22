import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './i18n/strings.g.dart';
import './localization.dart';
import './home.dart';

void main() {
  // เพิ่มตรงนี้
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  LocaleSettings.setLocaleRaw(Localization.instance().current.languageCode);

  runApp(const App());
}

// ----------------------------------------------------------------------

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // และเพิ่มตรงนี้
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.instance().list,
      locale: Localization.instance().current,
      //
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/': (context) => const HomePage(),
      },
      initialRoute: '/',
      title: t.app,
    );
  }
}
