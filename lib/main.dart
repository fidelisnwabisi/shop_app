import 'package:flutter/material.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

// void main() async {
//   await Supabase.initialize(
//     url: 'https://ndzhuakvuqojqlthdogk.supabase.co',
//     anonKey:
//         'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5kemh1YWt2dXFvanFsdGhkb2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODczMDMzMDAsImV4cCI6MjAwMjg3OTMwMH0.Kzc9p_yFkDISbwcsBC5LvalGNRW93QHMZyaMtcNocug',
//     authFlowType: AuthFlowType.pkce,
//   );
//   runApp(const MyApp());
// }

// // final supabase = Supabase.instance.client;

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: theme(),
//       // home: SplashScreen(),
//       // We use routName so we don't need to remember the name
//       initialRoute: SplashScreen.routeName,
//       routes: routes,
//     );
//   }
// }
