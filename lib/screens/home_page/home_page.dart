import 'package:flutter/material.dart';
import 'package:flutter_gora_app/configuration/configuration.dart';
import 'package:flutter_gora_app/configuration/style.dart';
import 'package:flutter_gora_app/screens/home_page/index.dart';
import 'package:flutter_gora_app/widget/widgets.dart';
import '../../configuration/icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: [
        SizedBox(
          height: SizeConfig.blockY! * 2.875,
        ),
        Image.asset(
          kGoraLogo,
          height: 61,
          width: 186,
        ),
        SizedBox(
          height: SizeConfig.blockY! * 5,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ], color: kWhite, borderRadius: BorderRadius.circular(kBorderRadius)),
          margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockX! * 8.33,
            // vertical: SizeConfig.blockY! * 1.375,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockX! * 5.277,
            vertical: SizeConfig.blockY! * 2,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    kCalendarIcon,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: SizeConfig.blockX! * 3.88,
                  ),
                  Text(
                    "Today's Status",
                    style: kPoppinsBold.copyWith(fontSize: 20, color: kOrange),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockY! * 3.375,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WidgetContainer(
                    kVal: "0",
                    kName: "Bookings",
                    kWidth: SizeConfig.blockX! * 30,
                  ),
                  WidgetContainer(
                    kVal: "0",
                    kName: "Rentals",
                    kWidth: SizeConfig.blockX! * 30,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockY! * 1.875,
              ),
              WidgetContainer(
                kVal: "₱ 0. 00",
                kName: "Earnings",
                kWidth: SizeConfig.blockX! * 72.22,
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.blockY! * 2,
        ),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(.5),
              spreadRadius: 0,
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ], color: kWhite, borderRadius: BorderRadius.circular(kBorderRadius)),
          margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockX! * 8.33,
            // vertical: SizeConfig.blockY! * 1.375,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockX! * 5.277,
            vertical: SizeConfig.blockY! * 1,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    kCalendarIcon,
                    height: 30,
                    width: 30,
                  ),
                  SizedBox(
                    width: SizeConfig.blockX! * 3.88,
                  ),
                  Text(
                    "All-Time Data",
                    style: kPoppinsBold.copyWith(fontSize: 20, color: kOrange),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockY! * 3.375,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WidgetContainer(
                    kVal: "0",
                    kName: "Bookings",
                    kWidth: SizeConfig.blockX! * 30,
                  ),
                  WidgetContainer(
                    kVal: "0",
                    kName: "Rentals",
                    kWidth: SizeConfig.blockX! * 30,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockY! * 1.875,
              ),
              WidgetContainer(
                kVal: "₱ 0. 00",
                kName: "Earnings",
                kWidth: SizeConfig.blockX! * 72.22,
              ),
              SizedBox(
                height: SizeConfig.blockY! * 1.875,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetElevatedButtonOne(
                          kColor: kOrange, kName: "Day", onPressed: () {}),
                      WidgetElevatedButtonOne(
                          kColor: kOrange, kName: "Month", onPressed: () {}),
                      WidgetElevatedButtonOne(
                          kColor: kOrange, kName: "Year", onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: WidgetElevatedButtonOne(
                          onPressed: () {}, kColor: kOrange, kName: "Details")),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
