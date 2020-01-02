import 'package:disqus_system/comments_screen/comment_screen.dart';
import 'package:disqus_system/login_screen.dart';
import 'package:disqus_system/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disqus System',
      initialRoute: '/',
      onGenerateRoute: routing,
      theme: ThemeData(
        primaryColor: Color(0xFF31809A),
        errorColor: Colors.red,
      ),
      home: SplashScreen(),
    );
  }

  Route routing(RouteSettings settings) {
    switch (settings.name) {
      case '/login_screen':
        return PageTransition(
          child: LoginScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/comment_screen':
        return PageTransition(
          child: CommentsScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      default:
        return null;
        break;
    }
  }
}
