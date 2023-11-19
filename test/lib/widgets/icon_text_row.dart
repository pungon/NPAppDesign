import 'package:flutter/material.dart';
import 'package:test/widgets/sizeDp.dart';
import 'package:test/app_colors.dart';

class IconTextRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;
  final BuildContext context;

  IconTextRow({
    required this.iconData,
    required this.text,
    required this.iconColor,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(
              iconData,
              color: iconColor,
              size: SizeDp.dpToPixels(4, context),
            ),
          ),
          SizedBox(
            width: SizeDp.dpToPixels(2, context),
          ),
          Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.white3)),
        ],
      ),
    );
  }
}
