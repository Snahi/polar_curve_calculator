import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polar_curve_calculator/screens/wings/wings_cubit.dart';

class SplashCubit extends Cubit<bool> {
  final WingsCubit _wingsCubit;

  SplashCubit({required WingsCubit wingsCubit})
      : _wingsCubit = wingsCubit,
        super(false);

  void initApp() async {
    await _wingsCubit.fetchAllWings();
    emit(true);
  }
}
