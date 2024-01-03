import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bestdoctorappointmentapp/core/routes/routes.dart';
import 'package:bestdoctorappointmentapp/features/home/ui/home_screen.dart';
import 'package:bestdoctorappointmentapp/core/di/dependancy_injection.dart';
import 'package:bestdoctorappointmentapp/features/login/ui/login_screen.dart';
import 'package:bestdoctorappointmentapp/features/splash_screen/splash_screen.dart';
import 'package:bestdoctorappointmentapp/features/login/logic/cubit/login_cubit.dart';
import 'package:bestdoctorappointmentapp/features/onboarding/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
