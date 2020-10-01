import 'imports/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,
        DeviceOrientation.portraitUp]);
  await Hive.initFlutter();
  //Hive.registerAdapter(ContactAdapter());
  await Hive.openBox('settings');
  Box box = Hive.box('settings');
  var darkModeOn = box.get('darkMode') ?? true;
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (context) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Listener(
      onPointerDown: (_){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null){
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: themeNotifier.getTheme(),
        home: HomePage(),
      ),
    );
  }
}