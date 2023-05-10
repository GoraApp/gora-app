import 'package:flutter/material.dart';

import '../../configuration/configuration.dart';
import '../../configuration/icons.dart';
import '../../configuration/style.dart';
import '../../functions/functions.dart';
import '../../widget/widgets.dart';
import '../../widget_method/widget_method.dart';

class WidgetPending extends StatelessWidget {
  final String kCOnfirmName;
  final bool kIsbuttonOn;
  final VoidCallback kOnPressedConfirm;
  final String kName;
  final String kPhone;
  final String kRoute;
  final String kDate;
  final String kAdult;
  final String kChild;
  final String kTotal;
  final String kRemarks;
  final String kSeat;
  const WidgetPending({
    super.key,
    required this.kName,
    required this.kPhone,
    required this.kRoute,
    required this.kDate,
    required this.kAdult,
    required this.kChild,
    required this.kTotal,
    required this.kRemarks,
    required this.kSeat,
    required this.kOnPressedConfirm,
    required this.kCOnfirmName,
    required this.kIsbuttonOn,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      height: SizeConfig.blockY! * 76,
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockX! * 2.77,
        ),
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockX! * 1.388,
                vertical: SizeConfig.blockY! * .625),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(color: kLightGrey.withOpacity(.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ralph Kevin Rynard Macahipay",
                  style: kPoppinsBold.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockY! * 3,
                  child: WidgetElevatedButtonOne(
                      onPressed: () {
                        _showPopup(
                          context,
                          kName,
                          kPhone,
                          kRoute,
                          kDate,
                          kAdult,
                          kChild,
                          kTotal,
                          kRemarks,
                          kSeat,
                          kOnPressedConfirm,
                          kCOnfirmName,
                          kIsbuttonOn,
                        );
                      },
                      kFontSize: 15,
                      kColor: kOrange,
                      kName: "View"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockX! * 1.388,
                vertical: SizeConfig.blockY! * .625),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                border: Border.all(color: kLightGrey.withOpacity(.5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ralph Kevin Rynard Macahipay",
                  style: kPoppinsBold.copyWith(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockY! * 3,
                  child: WidgetElevatedButtonOne(
                      onPressed: () {
                        _showPopup(
                          context,
                          kName,
                          kPhone,
                          kRoute,
                          kDate,
                          kAdult,
                          kChild,
                          kTotal,
                          kRemarks,
                          kSeat,
                          kOnPressedConfirm,
                          kCOnfirmName,
                          kIsbuttonOn,
                        );
                      },
                      kFontSize: 15,
                      kColor: kOrange,
                      kName: "View"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _showPopup(
  BuildContext context,
  kName,
  kPhone,
  kRoute,
  kDate,
  kAdult,
  kChild,
  kTotal,
  kRemarks,
  kSeat,
  kOnPressed,
  kCOnfirmName,
  kIsbuttonOn,
) {
  WidgetMethod widgetMethod = WidgetMethod();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      SizeConfig().init(context);
      return AlertDialog(
        contentPadding:
            EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 5),
        iconPadding: const EdgeInsets.symmetric(vertical: 2),
        icon: Container(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 5),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Details',
                  style: kPoppinsBold.copyWith(fontSize: 20),
                ),
                WidgetIconButton(
                  onPress: () {
                    NavFunctions.goBack(context);
                  },
                  kIcon: kExitIcon,
                ),
              ],
            ),
          ),
        ),
        content: Text.rich(
          TextSpan(
            children: <InlineSpan>[
              widgetMethod.kMethodTextSpan(kString: "Name: ", kColor: kGrey),
              widgetMethod.kMethodTextSpan(kString: '$kName\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(
                  kString: 'Phone Number: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '$kPhone\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Route: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '$kRoute\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Date', kColor: kGrey),
              widgetMethod.kMethodTextSpan(kString: 'kDate\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Adult: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '$kAdult\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Child: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '$kChild\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Total: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '₱ $kTotal\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Remarks: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(
                  kString: '$kRemarks\n', kColor: kBlack),
              widgetMethod.kMethodTextSpan(kString: 'Seat: ', kColor: kGrey),
              widgetMethod.kMethodTextSpan(kString: '$kSeat\n', kColor: kBlack),
            ],
          ),
        ),
        actions: kIsbuttonOn
            ? <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: SizeConfig.blockX! * 60,
                        child: WidgetElevatedButtonOne(
                            kFontSize: 14,
                            kName: 'View Seat',
                            kColor: kOrange,
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                      SizedBox(
                        width: SizeConfig.blockX! * 60,
                        child: WidgetElevatedButtonOne(
                            kFontSize: 14,
                            kName: kCOnfirmName,
                            kColor: kGreen,
                            onPressed: kOnPressed),
                      ),
                      SizedBox(
                        width: SizeConfig.blockX! * 60,
                        child: WidgetElevatedButtonOne(
                            kFontSize: 14,
                            kName: 'Cancel',
                            kColor: kRed,
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ),
                    ],
                  ),
                )
              ]
            : null,
      );
    },
  );
}
