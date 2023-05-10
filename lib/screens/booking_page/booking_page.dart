import 'package:flutter/material.dart';
import 'package:flutter_gora_app/configuration/style.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import '../pending_confirmed_history/pending_confirmed_history.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
            backgroundColor: kOrange,
            title: Text(
              "Bookings",
              style: kPoppinsBold.copyWith(fontSize: 20),
            ),
            automaticallyImplyLeading: false),
        body: Column(
          children: [
            ButtonsTabBar(
              buttonMargin: const EdgeInsets.all(1),
              contentPadding: const EdgeInsets.symmetric(horizontal: 23),
              radius: kBorderRadius,
              backgroundColor: kWhite,
              unselectedBackgroundColor: kWhite,
              unselectedLabelStyle:
                  kPoppinsMediumBold.copyWith(fontSize: 15, color: kBlack),
              labelStyle:
                  kPoppinsMediumBold.copyWith(fontSize: 15, color: kOrange),
              tabs: const [
                Tab(
                  text: "Pending",
                ),
                Tab(
                  text: "Confirmed",
                ),
                Tab(
                  text: "History",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //Must be in a Map
                  WidgetPending(
                    kName: 'Ralph Kevin E. Macahipay',
                    kPhone: '09617262694',
                    kRoute: 'PPC to Narra',
                    kDate: '2023-04-09',
                    kAdult: '1',
                    kChild: '2',
                    kTotal: '600.00',
                    kRemarks: 'N/A',
                    kSeat: 's3-s4-s5-s6-s7',
                    kOnPressedConfirm: () {},
                    kCOnfirmName: 'Confirm',
                    kIsbuttonOn: true,
                  ),
                  //Must Be in a Map
                  WidgetPending(
                    kName: 'Ralph Kevin E. Macahipay',
                    kPhone: '09617262694',
                    kRoute: 'PPC to Narra',
                    kDate: '2023-04-09',
                    kAdult: '1',
                    kChild: '2',
                    kTotal: '600.00',
                    kRemarks: 'N/A',
                    kSeat: 's3-s4-s5-s6-s7',
                    kOnPressedConfirm: () {},
                    kCOnfirmName: 'Confirm Payment',
                    kIsbuttonOn: true,
                  ),
                  WidgetPending(
                    kName: 'Ralph Kevin E. Macahipay',
                    kPhone: '09617262694',
                    kRoute: 'PPC to Narra',
                    kDate: '2023-04-09',
                    kAdult: '1',
                    kChild: '2',
                    kTotal: '600.00',
                    kRemarks: 'N/A',
                    kSeat: 's3-s4-s5-s6-s7',
                    kOnPressedConfirm: () {},
                    kCOnfirmName: 'Confirm Payment',
                    kIsbuttonOn: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
