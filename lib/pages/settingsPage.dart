import 'package:flutter_app_testing/imports/imports.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var _darkTheme = false;
  Box box = Hive.box('settings');

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.oswald(
            fontSize: 25,
            color: Theme.of(context).accentColor,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile(
              title: Text('Tag Nacht Modus'),
              value: _darkTheme,
              onChanged: (val) {
                setState(() {
                  _darkTheme = val;
                });
                onThemeChanged(val, themeNotifier, box);
              }),
          ListTile(
            title: Text('Painter'),
            onTap: () =>
                Navigator.push(context, BouncyPageRoute(widget: PainterPage())),
          ),
          ListTile(
            title: Text('Fullscreen'),
            onTap: () => Navigator.push(
                context, BouncyPageRoute(widget: FullScreenTest())),
          ),
          ListTile(
            title: Text('Animated Status'),
            onTap: () => Navigator.push(
                context, BouncyPageRoute(widget: AnimatedCirclePage())),
          ),
        ],
      ),
    );
  }
}

void onThemeChanged(bool value, ThemeNotifier themeNotifier, Box box) async {
  (value)
      ? themeNotifier.setTheme(darkTheme)
      : themeNotifier.setTheme(lightTheme);
  box.put('darkMode', value);
}
