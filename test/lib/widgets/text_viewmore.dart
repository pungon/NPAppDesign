import 'package:flutter/material.dart';
import 'package:test/widgets/sizeDp.dart';
import 'package:test/app_colors.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;

  const ExpandableText({super.key, required this.text, required this.textStyle});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: widget.textStyle,
          maxLines: _isExpanded ? 5 : 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: SizeDp.dpToPixels(5, context),
        ),
        InkWell(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                _isExpanded ? 'Expand' : 'Expand',
                style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.w500),
              ),
              Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: AppColors.primaryColor,
                size: SizeDp.dpToPixels(5, context),
              ),
            ],
          ),
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
      ],
    );
  }
}