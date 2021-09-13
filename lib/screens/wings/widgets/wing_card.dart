import 'package:flutter/material.dart';
import 'package:polar_curve_calculator/assets/c_colors.dart';
import 'package:polar_curve_calculator/assets/c_images.dart';
import 'package:polar_curve_calculator/assets/c_text_styles.dart';

class WingCard extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final String? imagePath;
  final String wingName;
  final Color bgColor;
  final Color textColor;
  final void Function() onTap;

  const WingCard({
    this.width = double.infinity,
    required this.height,
    this.borderRadius = 16,
    this.imagePath,
    required this.wingName,
    this.bgColor = CColors.color5,
    this.textColor = CColors.color1,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: CColors.color1opacity40,
              offset: Offset(0, 3),
              blurRadius: 6,
            )
          ]),
      child: _buildContent(),
    );
  }

  Widget _buildContent() => Material(
    color: Colors.transparent,
    child: InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onTap,
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imagePath ?? CImages.photoPlaceholder),
              Text(wingName, style: CTextStyles.caption1(textColor))
            ],
          ),
    ),
  );
}
