import 'package:additive_industries/theme/theme.dart';
import 'package:additive_industries/widgets/fab_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class CorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CorePageState();
}

class _CorePageState extends State {
  final Color outsideColor = ThemeColors.darkGrey;
  final Color middleColor = ThemeColors.darkBlue;
  final double fontsize = 11;
  final double paddingcell = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: ThemeColors.white,
        title: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
          child: Image.asset(
            'assets/img/additive-logo.png',
            fit: BoxFit.contain,
            width: 200,
          ),
        ),
        iconTheme: IconThemeData(color: ThemeColors.darkBlue),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 14),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: BreadCrumb(
                      items: <BreadCrumbItem>[
                        BreadCrumbItem(
                          content: Text(
                            'Home',
                            style: TextStyle(
                              fontFamily: "FrankNew",
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        BreadCrumbItem(
                          content: Text(
                            'Machine details',
                            style: TextStyle(
                              fontFamily: "FrankNew",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                      divider: Icon(Icons.chevron_right),
                      overflow: WrapOverflow(
                        keepLastDivider: false,
                        direction: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                GestureDetector(
                  child: FabListItem(
                      title: 'Core 1',
                      errormessage: 'Ready to start',
                      errormessageIcon: Icons.check_circle,
                      errorColor: ThemeColors.green,
                      var1: 'Name ',
                      var2: 'Status',
                      var11: 'RN098_NE_3_1',
                      var22: 'Queued'),
                  onTap: () => Navigator.of(context).pushNamed('/coredetail'),
                ),
                FabListItem(
                    title: 'Core 2',
                    errormessage: 'Plan Job',
                    errormessageIcon: Icons.calendar_today_rounded,
                    errorColor: ThemeColors.darkBlue,
                    var1: 'Name ',
                    var2: 'Status',
                    var11: 'RN098_NE_3_2',
                    var22: 'Idle'),
                FabListItem(
                    title: 'Core 3',
                    errormessage: 'Warning',
                    errormessageIcon: Icons.warning,
                    errorColor: ThemeColors.orange,
                    var1: 'Name ',
                    var2: 'Status',
                    var11: 'RN098_NE_3_3',
                    var22: 'Printing'),
                FabListItem(
                    title: 'Core 4',
                    errormessage: 'Ready to start',
                    errormessageIcon: Icons.check_circle,
                    errorColor: ThemeColors.green,
                    var1: 'Name ',
                    var2: 'Status',
                    var11: 'RN098_NE_3_4',
                    var22: 'Queued'),
              ],
              shrinkWrap: true,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Logs',
                  style: TextStyle(
                    fontFamily: "FrankNew",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ThemeColors.darkBlue,
                  ),
                ),
              ),
            ),
            Table(
              columnWidths: {
            0: FlexColumnWidth(2.5),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(3),
            },
              //border: TableBorder.all(
              //color: ThemeColors.white,
              //width: 1,
              //style: BorderStyle.solid),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: ThemeColors.lightGrey,
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: ThemeColors.white),)
                    ),
                    children: [
                  TableCell(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Text(
                              'AM Core 3',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize,
                                  color: outsideColor),
                            ))),
                  ),
                  TableCell(
                      child: Container(
                        padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Started print RN098_NE_3_5',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize,
                                  color: middleColor),
                            )),
                      )),
                  TableCell(
                      child: Container(
                        padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '23/3/2020 12.07',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize,
                                  color: outsideColor),
                            )),
                      )),
                ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: ThemeColors.lightGrey,
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: ThemeColors.white),)
                    ),
                    children: [
                      TableCell(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                                child: Text(
                                  'Storage module',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                ))),
                      ),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Store print RN098_NE_3_3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: middleColor),
                                )),
                          )),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '22/3/2020 14.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                )),
                          )),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: ThemeColors.lightGrey,
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: ThemeColors.white),)
                    ),
                    children: [
                      TableCell(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                                child: Text(
                                  'Controll module',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                ))),
                      ),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Refill materials',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: middleColor),
                                )),
                          )),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '19/3/2020 11.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                )),
                          )),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: ThemeColors.lightGrey,
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: ThemeColors.white),)
                    ),
                    children: [
                      TableCell(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                                child: Text(
                                  'AM Core 2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                ))),
                      ),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Finished print RN098_NE_3_2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: middleColor),
                                )),
                          )),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '5/3/2020 15.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                )),
                          )),
                    ]),
                TableRow(
                    decoration: BoxDecoration(
                        color: ThemeColors.lightGrey,
                        border: Border(
                          bottom: BorderSide(width: 2.0, color: ThemeColors.offWhite),)
                    ),
                    children: [
                      TableCell(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                                child: Text(
                                  'AM Core 2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                ))),
                      ),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Started print RN098_NE_3_2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: middleColor),
                                )),
                          )),
                      TableCell(
                          child: Container(
                            padding: EdgeInsets.only(bottom: paddingcell, top: paddingcell, left: paddingcell),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '1/3/2020 15.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize,
                                      color: outsideColor),
                                )),
                          )),
                    ]),

              ],
            )
          ],
        ),
      ),
    );
  }
}
