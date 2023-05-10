import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gora_app/configuration/configuration.dart';
import '../../configuration/icons.dart';
import '../../configuration/style.dart';
import '../../widget/widgets.dart';

class PUVPage extends StatelessWidget {
  const PUVPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedItem;
    List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

    SizeConfig().init(context);
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockX! * 10.833,
      ),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            WidgetTimePicker(kIconName: kQueueIcon, kTextName: "Queue"),
            WidgetTimePicker(kIconName: kDepart, kTextName: "Depart"),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: SizeConfig.blockY! * 2),
          width: SizeConfig.blockX! * 78.33,
          height: SizeConfig.blockY! * 5.125,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: kGrey.withOpacity(.5),
            ),
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: WidgetDropdownButton(
              kText: "North/South",
              items: items,
              selectedItem: selectedItem,
              kIcon: kLocationIcon),
        ),
        Container(
          margin: EdgeInsets.only(top: SizeConfig.blockY! * 2),
          width: SizeConfig.blockX! * 78.33,
          height: SizeConfig.blockY! * 5.125,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: kGrey.withOpacity(.5),
            ),
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: WidgetDropdownButton(
              kText: "From - To",
              items: items,
              selectedItem: selectedItem,
              kIcon: kLocationIcon),
        ),
        Container(
          margin: EdgeInsets.only(top: SizeConfig.blockY! * 2),
          width: SizeConfig.blockX! * 78.33,
          height: SizeConfig.blockY! * 5.125,
          child: const WidgetTextForm(
              khintText: "Price", ktype: TextInputType.number),
        ),
        SizedBox(
          height: SizeConfig.blockY! * 3.875,
        ),
        WidgetElevatedButtonOne(
          onPressed: () {},
          kColor: kOrange,
          kName: "Confirm",
        ),
        SizedBox(
          height: SizeConfig.blockY! * 3.875,
        ),
        SizedBox(
            height: SizeConfig.blockY! * 32.375,
            width: SizeConfig.blockX! * 81.11,
            child: MyTable()),
      ],
    );
  }
}

class WidgetDropdownButton extends StatelessWidget {
  const WidgetDropdownButton({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.kIcon,
    required this.kText,
  });

  final List<String> items;
  final String? selectedItem;
  final String kIcon;
  final String kText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: Row(children: [
          Image.asset(
            kIcon,
            width: SizeConfig.blockX! * 7.944,
            height: SizeConfig.blockY! * 4.125,
          ),
          Text(
            kText,
            style: kPoppinsMediumBold.copyWith(color: kGrey.withOpacity(.5)),
          ),
        ]),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: selectedItem,
        onChanged: (value) {},
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  final List<Map<String, String>> _data = [
    {'route': 'Route 1', 'price': '\$50'},
    {'route': 'Route 2', 'price': '\$75'},
    {'route': 'Route 3', 'price': '\$100'},
    {'route': 'Route 4', 'price': '\$125'},
    {'route': 'Route 4', 'price': '\$125'},
    {'route': 'Route 4', 'price': '\$125'},
  ];

  MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FlexColumnWidth(3),
          1: FlexColumnWidth(),
        },
        children: [
          const TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Routes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Price',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          ..._data.map((row) {
            return TableRow(
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(row['route']!),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(row['price']!),
                  ),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
