import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:thoughtbox/application/user_bloc/userdata_bloc_bloc.dart';
import 'package:thoughtbox/application/bloc_onbording/onbording_bloc.dart';
import 'package:thoughtbox/application/weather/weather_bloc.dart';
import 'package:thoughtbox/domain/core/di.dart';
import 'package:thoughtbox/domain/model_user/model_user.dart';
import 'package:thoughtbox/presentation/screen_home/screen_home.dart';
import 'package:thoughtbox/presentation/screen_onbording/screen_onbording.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await configureInjection();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('boxName');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingBloc(),
        ),
        BlocProvider(
          create: (context) => UserdataBlocBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<WeatherBloc>(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: 
          storage.read('isLogin') == null
             ? 
              OnbordingScreen()
          : HomeScreen(),
              ),
    );
  }
}
