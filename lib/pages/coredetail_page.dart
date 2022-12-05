import 'package:additive_industries/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class CoreDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CoreDetailPageState();
}

class _CoreDetailPageState extends State {
  final Color leftColor = ThemeColors.darkGrey;
  final Color rightColor = ThemeColors.darkBlue;
  final double fontsize = 13;
  final double paddingcell = 8;

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
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        BreadCrumbItem(
                          content: Text(
                            'Core details',
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
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Job information',
                  style: TextStyle(
                    fontFamily: "FrankNew",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ThemeColors.darkBlue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Table(
                defaultColumnWidth:
                    FixedColumnWidth(MediaQuery.of(context).size.width / 2),
                // border: TableBorder.all(
                //     color: ThemeColors.darkBlue,
                //     width: 1,
                //     style: BorderStyle.none),
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.only(bottom: paddingcell),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              ))),
                    ),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'RN098_NE_3_5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: rightColor),
                          )),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Status',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Waiting',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: rightColor),
                          )),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Job started on',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '21/3/2021 11.45',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: rightColor),
                          )),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Estimated finish',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: 24),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '25/3/2021 13.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: rightColor),
                          )),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Automatic build zeroing',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.only(bottom: paddingcell),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/img/ToggleButtonBlue.png',
                            height: 14,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Automatic build zeroing',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/img/ToggleButtonAmber.png',
                          height: 14,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Disable operator extractions',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/img/ToggleButtonBlue.png',
                          height: 14,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Automatic plate storage',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize,
                                color: leftColor),
                          )),
                    )),
                    TableCell(
                        child: Container(
                      padding: EdgeInsets.only(bottom: paddingcell),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/img/ToggleButtonAmber.png',
                          height: 14,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Core information',
                  style: TextStyle(
                    fontFamily: "FrankNew",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ThemeColors.darkBlue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Table(
                defaultColumnWidth:
                FixedColumnWidth(MediaQuery.of(context).size.width / 2),
                // border: TableBorder.all(
                //     color: ThemeColors.darkBlue,
                //     width: 1,
                //     style: BorderStyle.none),
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              padding: EdgeInsets.only(bottom: paddingcell),
                              child: Text(
                                'Process conditioning phase',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              ))),
                    ),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Post-manufactering',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Powder transport',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Idle',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Powder extraction',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Idle',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Layer',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '1200 - 2000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Remaining powder',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.only(bottom: paddingcell),
                        child: Align(
                          alignment: Alignment.centerLeft,
                            child: Text(
                              '128.54 mm',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontsize,
                                  color: rightColor),
                            )),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Material',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                            alignment: Alignment.centerLeft,
                              child: Text(
                                'Inconel 718',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Build plate temperature',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                            alignment: Alignment.centerLeft,
                              child: Text(
                                '25,9 °C',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Oxigen level',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: leftColor),
                              )),
                        )),
                    TableCell(
                        child: Container(
                          padding: EdgeInsets.only(bottom: paddingcell),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '0.5423%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontsize,
                                    color: rightColor),
                              )),
                        )),

                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
