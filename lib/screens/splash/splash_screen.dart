import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polar_curve_calculator/app_router.dart';
import 'package:polar_curve_calculator/assets/c_colors.dart';
import 'package:polar_curve_calculator/screens/splash/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, bool>(
      listener: (context, isInitialized) {
        if (isInitialized) {
          Navigator.of(context).pushReplacementNamed(AppRouter.wings);
        }
      },
      child: Container(
        color: CColors.color5,
      ),
    );
  }
}
