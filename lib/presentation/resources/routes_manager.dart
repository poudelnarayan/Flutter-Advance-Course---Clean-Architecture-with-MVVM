import 'package:flutter/material.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/forgot_password/forgot_password_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/login/login_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/main/main_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/onboarding/onboarding_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/register/register_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/resources/strings_manager.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/splash/splash_screen.dart';
import 'package:flutter_advance_code_clean_architecture_with_mvvm/presentation/store_details/store_details_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingROute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailRoute = '/storeDetail';

  GoRouter get router => GoRouter(
        routes: [
          GoRoute(
            name: splashRoute,
            path: splashRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const SplashScreen(),
          ),
          GoRoute(
            name: onBoardingROute,
            path: onBoardingROute,
            builder: (BuildContext context, GoRouterState state) =>
                const OnBoardingScreen(),
          ),
          GoRoute(
            name: loginRoute,
            path: loginRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const LoginScreen(),
          ),
          GoRoute(
            name: registerRoute,
            path: registerRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const RegisterScreen(),
          ),
          GoRoute(
            name: forgotPasswordRoute,
            path: forgotPasswordRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const ForgotPasswordScreen(),
          ),
          GoRoute(
            name: mainRoute,
            path: mainRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const MainScreen(),
          ),
          GoRoute(
            name: storeDetailRoute,
            path: storeDetailRoute,
            builder: (BuildContext context, GoRouterState state) =>
                const StoreDetailsScreen(),
          ),
        ],
        errorBuilder: (context, state) => const UndefinedRoute(),
      );
}

class UndefinedRoute extends StatelessWidget {
  const UndefinedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.noRouteFound),
      ),
      body: const Center(
        child: Text(AppString.noRouteFound),
      ),
    );
  }
}
