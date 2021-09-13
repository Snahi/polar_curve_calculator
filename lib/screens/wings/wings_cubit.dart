import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polar_curve_calculator/models/wing.dart';
import 'package:polar_curve_calculator/repositories/wings_repository.dart';

class WingsState extends Equatable {
  final List<Wing> wings;

  WingsState({
    required this.wings,
  });

  WingsState copyWith({
    List<Wing>? wings,
  }) =>
      WingsState(
        wings: wings ?? this.wings,
      );

  @override
  List<Object?> get props => [wings];
}

class WingsCubit extends Cubit<WingsState> {
  final WingsRepository _wingsRepository;

  WingsCubit({required WingsRepository wingsRepository})
      : _wingsRepository = wingsRepository,
        super(WingsState(wings: []));

  Future<void> fetchAllWings() async =>
      emit(state.copyWith(wings: await _wingsRepository.getAllWings()));
}
