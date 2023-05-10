import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gora_app/configuration/configuration.dart';
import 'package:flutter_gora_app/configuration/style.dart';
import 'package:flutter_gora_app/screens/home_page/home_page.dart';
import 'package:flutter_gora_app/screens/qr_page/qr_page.dart';
import '../booking_page/booking_page.dart';
import '../services_page/services_page.dart';
import '../profile_page/profile_pagel.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<FloatingNavbarItem> _navbarIcon = <FloatingNavbarItem>[
    FloatingNavbarItem(icon: Icons.home, title: 'Home'),
    FloatingNavbarItem(icon: Icons.car_rental_outlined, title: 'Booking'),
    FloatingNavbarItem(icon: Icons.qr_code_scanner, title: 'QR'),
    FloatingNavbarItem(
        icon: Icons.airline_seat_recline_normal_sharp, title: 'Service'),
    FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePage(),
      const BookingPage(),
      const QRpage(),
      const ServicesPage(),
      const ProfilePage(),
    ];
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: FloatingNavbar(
        borderRadius: kBorderRadius,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        iconSize: 30,
        elevation: 50,
        fontSize: 10,
        backgroundColor: kWhite,
        selectedBackgroundColor: kOrange,
        selectedItemColor: kWhite,
        unselectedItemColor: kGrey,
        items: _navbarIcon.map((value) => value).toList(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      backgroundColor: kLighBlue,
      body: IndexedStack(index: _selectedIndex, children: screens),
    );
  }
}

class WidgetContainer extends StatelessWidget {
  final String kVal;
  final String kName;
  final double kWidth;
  const WidgetContainer({
    super.key,
    required this.kVal,
    required this.kName,
    required this.kWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kGrey.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      height: SizeConfig.blockY! * 6.625,
      child: Column(children: [
        Text(
          kVal,
          style: kPoppinsBold.copyWith(fontSize: 18),
        ),
        Text(
          kName,
          style: kPoppinsBold.copyWith(fontSize: 15),
        ),
      ]),
    );
  }
}
