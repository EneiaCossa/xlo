import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:mzd/stores/provincia_store.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:mzd/screens/base/base_screen.dart';
import 'package:mzd/stores/category_store.dart';
import 'package:mzd/stores/connectivity_store.dart';
import 'package:mzd/stores/favorite_store.dart';
import 'package:mzd/stores/home_store.dart';
import 'package:mzd/stores/page_store.dart';
import 'package:mzd/stores/user_manager_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(ConnectivityStore());
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(HomeStore());
  GetIt.I.registerSingleton(UserManagerStore());
  GetIt.I.registerSingleton(CategoryStore());
  GetIt.I.registerSingleton(ProvinciaStore());

  GetIt.I.registerSingleton(FavoriteStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'qdXsGuTRcQvCCZYzkeGTGB8qE8KUZp5IhYpArKg2',
    'https://parseapi.back4app.com/',
    clientKey: 'nyVe8Sw6thws3XEZvV7QGrEJ5yk2mBULTYTYlWo9',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        appBarTheme: AppBarTheme(elevation: 0),
        cursorColor: Colors.orange,
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: BaseScreen(),
    );
  }
}
