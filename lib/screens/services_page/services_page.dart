import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gora_app/screens/services_page/puv.dart';
import 'package:flutter_gora_app/screens/services_page/van_rental.dart';

import '../../configuration/style.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kWhite,
          appBar: AppBar(
              backgroundColor: kOrange,
              title: Text(
                "Services",
                style: kPoppinsBold.copyWith(fontSize: 20),
              ),
              automaticallyImplyLeading: false),
          body: Column(children: [
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
                    text: "Van Rental",
                  ),
                  Tab(
                    text: "Public Utility Vehicle",
                  ),
                ]),
            const Expanded(
                child: TabBarView(children: [VanRental(), PUVPage()]))
          ]),
        ),
      ),
    );
  }
}
