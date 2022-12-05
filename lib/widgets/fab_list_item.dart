import 'package:additive_industries/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FabListItem extends StatelessWidget {
  final String title;
  final String errormessage;
  final IconData errormessageIcon;
  final Color errorColor;
  final String var1;
  final String var11;
  final String var2;
  final String var22;

  FabListItem({
    @required this.title,
    @required this.errormessage,
    @required this.errormessageIcon,
    @required this.errorColor,
    this.var1,
    this.var2,
    this.var11,
    this.var22,
  });

  @override
  Widget build(BuildContext context) {
    // var title = "1. Metalfab-420";
    // var errormessage = "Warning";
    // var errormessageIcon = Icons.warning;
    // var var1 = "Status:";
    // var var11 = "Not printing";
    // var var2 = "Time remaining:";
    // var var22 = "4h 30min";
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(4.0)),
          color: ThemeColors.white,
          border: Border.all(color: const Color(0x1E000000))),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/img/metalfab.png'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        title.toUpperCase(),
                        style: TextStyle(
                          fontFamily: "FrankNew",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text(var1,
                                style: TextStyle(
                                  fontFamily: "FrankNew",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                )),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(var11,
                                style: TextStyle(
                                  fontFamily: "FrankNew",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                )),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(var2,
                              style: TextStyle(
                                fontFamily: "FrankNew",
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              )),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(var22,
                              style: TextStyle(
                                fontFamily: "FrankNew",
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                child: Row(
                  children: [
                    Icon(
                      errormessageIcon,
                      color: errorColor,
                      size: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 2, 0, 0),
                      child: Text(errormessage,
                          style: TextStyle(
                            fontFamily: "FrankNew",
                            fontWeight: FontWeight.normal,
                            color: errorColor,
                            fontSize: 12,
                          )),
                    ),
                  ],
                ),
              ),
              alignment: Alignment.topRight,
            )
          ],
        ),
      ),
    );
  }
}
