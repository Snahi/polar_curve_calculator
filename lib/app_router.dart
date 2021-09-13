import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polar_curve_calculator/repositories/wings_repository.dart';
import 'package:polar_curve_calculator/screens/splash/splash_cubit.dart';
import 'package:polar_curve_calculator/screens/splash/splash_screen.dart';
import 'package:polar_curve_calculator/screens/wings/wings_cubit.dart';
import 'package:polar_curve_calculator/screens/wings/wings_screen.dart';

class AppRouter {
  static const splash = 'splash';
  static const wings = '/wings';
  final WingsRepository _wingsRepository = WingsRepository();
  late final WingsCubit _wingsCubit;

  void init() {
    _wingsCubit = WingsCubit(wingsRepository: _wingsRepository);
  }

  Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SplashCubit(wingsCubit: _wingsCubit)..initApp(),
            child: SplashScreen(),
          ),
        );
      case wings:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _wingsCubit,
            child: WingsScreen(),
          ),
        );
      default:
        throw NoSuchRouteException();
    }
  }

  Future<void> close() async {
    await _wingsCubit.close();
  }
}

class NoSuchRouteException implements Exception {}
