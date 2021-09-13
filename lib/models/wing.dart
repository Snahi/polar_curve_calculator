import 'package:equatable/equatable.dart';

class Wing extends Equatable {
  final String name;

  Wing({
    required this.name,
  });

  @override
  List<Object?> get props => [name];
}
