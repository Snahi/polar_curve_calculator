import 'package:polar_curve_calculator/models/wing.dart';

class WingsRepository {
  Future<List<Wing>> getAllWings() async {
    // TODO implement
    return [Wing(name: 'Skywalk Chili 3'), Wing(name: '777 Queen 2')];
  }
}
