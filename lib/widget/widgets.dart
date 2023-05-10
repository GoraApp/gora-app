import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../configuration/configuration.dart';
import '../configuration/style.dart';

class WidgetElevatedButtonTwo extends StatelessWidget {
  final String kIcon;
  final VoidCallback onPressed;
  final Color kColorText;
  final String kName;
  final String? kPageRoute;
  final Color kColorButton;
  const WidgetElevatedButtonTwo({
    required this.kIcon,
    required this.onPressed,
    super.key,
    this.kPageRoute,
    required this.kColorButton,
    required this.kName,
    required this.kColorText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kColorButton,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: kGrey, width: 1),
          borderRadius: BorderRadius.circular(
            kBorderRadius,
          ),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                kIcon,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              kName,
              style:
                  kPoppinsMediumBold.copyWith(fontSize: 17, color: kColorText),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetElevatedButtonOne extends StatelessWidget {
  final VoidCallback onPressed;
  final double? kFontSize;
  final String kName;
  final String? kPageRoute;
  final Color kColor;
  const WidgetElevatedButtonOne({
    required this.onPressed,
    super.key,
    this.kFontSize,
    this.kPageRoute,
    required this.kColor,
    required this.kName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kBorderRadius,
          ),
        ),
      ),
      child: Text(
        kName,
        style: kPoppinsMediumBold.copyWith(fontSize: kFontSize ?? 17),
      ),
    );
  }
}

class WidgetTextButton extends StatelessWidget {
  final String text;
  const WidgetTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: kPoppinsMediumBold.copyWith(fontSize: 17, color: kGrey),
        ));
  }
}

class WidgetIconButton extends StatelessWidget {
  final VoidCallback onPress;
  final String kIcon;
  const WidgetIconButton({
    required this.onPress,
    required this.kIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: SvgPicture.asset(
        kIcon,
      ),
    );
  }
}

class WidgetTextForm extends StatelessWidget {
  final TextInputType ktype;
  final String khintText;
  const WidgetTextForm({
    super.key,
    required this.khintText,
    required this.ktype,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: ktype,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: khintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(width: 10, strokeAlign: 4),
        ),
      ),
    );
  }
}

class WidgetTimePicker extends StatelessWidget {
  final String kTextName;
  final String kIconName;
  const WidgetTimePicker({
    super.key,
    required this.kIconName,
    required this.kTextName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
      },
      child: Container(
        width: SizeConfig.blockX! * 36.66,
        height: SizeConfig.blockY! * 5.125,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: kGrey.withOpacity(.5),
          ),
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              kIconName,
              width: SizeConfig.blockX! * 7.944, //SizeConfig.blockX! * 7.944
              height: SizeConfig.blockY! * 4.125, //SizeConfig.blockY! * 4.125
            ),
            Text(
              kTextName,
              style: kPoppinsMediumBold.copyWith(color: kGrey.withOpacity(.5)),
            ),
          ],
        ),
      ),
    );
  }
}
