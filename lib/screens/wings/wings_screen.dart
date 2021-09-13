import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polar_curve_calculator/assets/c_colors.dart';
import 'package:polar_curve_calculator/assets/c_text_styles.dart';
import 'package:polar_curve_calculator/l10n/s.dart';
import 'package:polar_curve_calculator/screens/wings/widgets/wing_card.dart';
import 'package:polar_curve_calculator/screens/wings/wings_cubit.dart';

class WingsScreen extends StatelessWidget {
  const WingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.color5,
      appBar: _buildAppBar(),
      body: _buildContent(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: CColors.color1,
        title: Text(
          S.current.wingsScreenTitle,
          style: CTextStyles.appBar1(CColors.color5),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO implement
            },
            icon: Icon(
              Icons.add,
              color: CColors.color5,
            ),
          )
        ],
      );

  Widget _buildContent() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: BlocBuilder<WingsCubit, WingsState>(
          builder: (context, state) => ListView.separated(
            itemCount: state.wings.length,
            separatorBuilder: (context, idx) => SizedBox(height: 8),
            itemBuilder: (context, idx) => WingCard(
              height: 180,
              wingName: state.wings[idx].name,
              onTap: () {
                // TODO implement
              },
            ),
          ),
        ),
      );
}
