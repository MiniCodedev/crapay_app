import 'package:crapay_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isPassed;
  final bool isLast;
  final String text;
  final String subText;
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPassed,
    required this.text,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        indicatorStyle: IndicatorStyle(
            width: 20,
            color: isPassed
                ? AppColors.passedtimeLineTileColor
                : AppColors.unPassedtimeLineTileColor),
        beforeLineStyle: LineStyle(
            color: isPassed
                ? AppColors.passedtimeLineTileColor
                : AppColors.unPassedtimeLineTileColor,
            thickness: 2),
        afterLineStyle: LineStyle(
          color: isPassed
              ? AppColors.passedtimeLineTileColor
              : AppColors.unPassedtimeLineTileColor,
          thickness: 2,
        ),
        endChild: ListTile(
          title: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          subtitle: Text(
            subText,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.greyColor),
          ),
        ),
      ),
    );
  }
}
