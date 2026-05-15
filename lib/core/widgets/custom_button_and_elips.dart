import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';

class CustomButtonAndElips extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final double? width;
  final Color backgroundColor;

  const CustomButtonAndElips({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.width = double.infinity, required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 56,
      child: isOutlined
          ? OutlinedButton(
              onPressed: isLoading ? null : onPressed,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.mainColor, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
              ),
              child: _buildChild(),
            )
          : ElevatedButton(
              onPressed: isLoading ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                ),
                elevation: 0,
              ),
              child: _buildChild(),
            ),
    );
  }

  Widget _buildChild() {
    if (isLoading) {
      return const SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2.5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }
    return Text(
      text,
      style: isOutlined
          ? TextStyles.buttonText.copyWith(color: AppColors.primaryBlue)
          : TextStyles.buttonText,
    );
  }
}
