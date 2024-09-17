import 'package:flutter/material.dart';
import 'package:flutter_starter_project/core/configs/themes/palette.dart';
import 'package:flutter_starter_project/core/l10n/localizations.dart';

class TitleSeeAll extends StatelessWidget {
  const TitleSeeAll({
    Key? key,
    required this.title,
    this.onSeeAll,
  }) : super(key: key);

  final String title;
  final Function()? onSeeAll;

  @override
  Widget build(BuildContext context) {
    final labels = context.localizations;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          InkWell(
            onTap: onSeeAll,
            child: Text(
              labels.seeAll,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Palette.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
