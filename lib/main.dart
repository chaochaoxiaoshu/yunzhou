import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yunzhou_vpn_desktop/helpers/init_window_size.dart';
import 'package:yunzhou_vpn_desktop/helpers/init_xray.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration.dart';
import 'package:yunzhou_vpn_desktop/models/user_info.dart';
import 'package:yunzhou_vpn_desktop/models/xray.dart';
import 'package:yunzhou_vpn_desktop/router/router.dart';
import 'package:yunzhou_vpn_desktop/styles/typography.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initWindowSize();
  await initXRay();

  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserInfoProvider>(
          create: (context) => UserInfoProvider(prefs: prefs),
        ),
        ChangeNotifierProvider<AccelerationProvider>(
          create: (context) => AccelerationProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<UserInfoProvider>(context, listen: false).checkGuest();
    super.initState();
  }

  @override
  void dispose() {
    XrayProvider.shared.endService();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF42FBF5),
          brightness: Brightness.dark,
        ),
        textTheme: textTheme,
        useMaterial3: true,
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
      ),
      routerConfig: router,
    );
  }
}
