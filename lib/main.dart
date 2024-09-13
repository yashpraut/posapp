import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posapp/bloc/auth/auth_bloc.dart';
import 'package:posapp/screens/auth/authentication_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'configs/app_theme.dart';
import 'data/instances.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initDependencies();
  runApp(const MyApp());
}

_initDependencies() async {
  configurableDependencies();
  await getIt.isReady<SharedPreferences>();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider(lazy: false, create: (context) => AuthBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: AppRoutes.onGenerateRoutes,
        theme: appTheme,
        home: const AuthenticationScreen(),
      ),
    );
  }
}
