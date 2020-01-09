import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.dark,
      home: MyHomePage(title: 'this is title'),
    );
  }

  ThemeData _buildLightTheme() => ThemeData(
        primarySwatch: Colors.blue,
      );

  ThemeData _buildDarkTheme() => ThemeData(
      // indicate current theme is light or dart
      brightness: Brightness.dark,
      backgroundColor: Colors.grey[900],
      scaffoldBackgroundColor: Colors.grey[900],
      primaryColor: Colors.white24,
      primaryColorLight: Colors.white38,
      primaryColorDark: Colors.white12,
      primaryColorBrightness: Brightness.dark,
      accentColor: Colors.orange,
      accentColorBrightness: Brightness.dark,
      buttonColor: Colors.white38,
      cursorColor: Colors.white30,
      dividerColor: Colors.white54,
      // text
      textTheme: Typography.dense2018,
      // input
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white12,
        isCollapsed: true,
        border: InputBorder.none,
      ),
      appBarTheme: AppBarTheme(elevation: 0),
      /*colorScheme: ColorScheme(
          primary: Colors.white24,
          primaryVariant: Colors.white38,
          secondary: Colors.orange,
          secondaryVariant: Colors.orange[300],
          surface: Colors.grey[900],
          background: Colors.grey[900],
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white70,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),*/
      cupertinoOverrideTheme: _buildCupertinoTheme());

  CupertinoThemeData _buildCupertinoTheme() => CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white24,
        primaryContrastingColor: Colors.white,
        barBackgroundColor: Colors.white24,
        scaffoldBackgroundColor: Colors.grey[900],
      );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text('FlatButton'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('RaisedButton'),
            ),
            Text('text style = body1', style: Theme.of(context).textTheme.body1),
            Text('text style = body2', style: Theme.of(context).textTheme.body2),
            TextField(),
          ],
        ),
      ),
    );
  }
}
