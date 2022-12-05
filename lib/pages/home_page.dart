import 'package:additive_industries/theme/theme.dart';
import 'package:additive_industries/widgets/fab_list_item.dart';
import 'package:additive_industries/widgets/filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State {

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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                      divider: Icon(Icons.chevron_right),
                      overflow: WrapOverflow(
                        keepLastDivider: false,
                        direction: Axis.horizontal,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Filters(
                        filterCallback: (Filter currentFilter) {print(currentFilter);},
                      )),
                ],
              ),
            ),
            ListView(
              children: [
                GestureDetector(
                  child: FabListItem(
                      title: 'Metalfab-420',
                      errormessage: 'Warning',
                      errormessageIcon: Icons.warning,
                      errorColor: ThemeColors.orange,
                      var1: 'Status: ',
                      var2: 'Time remaining:',
                      var11: 'Printing',
                      var22: '4h 30m'),
                  onTap: () => Navigator.of(context).pushNamed('/cores'),
                ),
                GestureDetector(
                  child: FabListItem(
                      title: 'Metalfab-420',
                      errormessage: 'Warning',
                      errormessageIcon: Icons.error,
                      errorColor: ThemeColors.red,
                      var1: 'Status: ',
                      var2: 'Time remaining:',
                      var11: 'Printing',
                      var22: '4h 30m'),
                  onTap: () => Navigator.of(context).pushNamed('/cores'),
                ),
                GestureDetector(
                  child: FabListItem(
                      title: 'Metalfab-420',
                      errormessage: 'Working',
                      errormessageIcon: Icons.check_circle,
                      errorColor: ThemeColors.green,
                      var1: 'Status: ',
                      var2: 'Time remaining:',
                      var11: 'Printing',
                      var22: '4h 30m'),
                  onTap: () => Navigator.of(context).pushNamed('/cores'),
                ),
                GestureDetector(
                  child: FabListItem(
                      title: 'Metalfab-420',
                      errormessage: 'Warning',
                      errormessageIcon: Icons.warning,
                      errorColor: ThemeColors.orange,
                      var1: 'Status: ',
                      var2: 'Time remaining:',
                      var11: 'Printing',
                      var22: '4h 30m'),
                  onTap: () => Navigator.of(context).pushNamed('/cores'),
                ),
              ],
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );

  }
}
