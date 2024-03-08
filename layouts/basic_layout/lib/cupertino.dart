import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  const IosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'Flutter Ios App',
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: CupertinoColors.systemBlue,
        ),
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.systemGrey,
            middle: Text('Flutter Ios'),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Hello World'),
              ],
            ),
          ),
        ));
  }
}
