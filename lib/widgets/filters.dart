import 'package:additive_industries/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef void FilterCallback(Filter currentFilter);

class Filters extends StatefulWidget {
  final FilterCallback filterCallback;
  Filters({@required this.filterCallback});

  @override
  State<StatefulWidget> createState() => new _FiltersState();
}

class _FiltersState extends State<Filters> {
  Filter currentFilter = Filter.Errors;

  void _onPressed(Filter filter) {
    setState(() {
      currentFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.filterCallback(currentFilter);
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0.0),
      child: Row(
        children: [
          FilterButton(
            'Errors',
            isSelected: currentFilter == Filter.Errors,
            onTap: () => _onPressed(Filter.Errors),
          ),
          FilterButton(
            'Time',
            isSelected: currentFilter == Filter.Time,
            onTap: () => _onPressed(Filter.Time),
          ),
          FilterButton(
            'Status',
            isSelected: currentFilter == Filter.Status,
            onTap: () => _onPressed(Filter.Status),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}

enum Filter { Errors, Time, Status }

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onTap;

  FilterButton(
      this.text, {
        Key key,
        this.isSelected = false,
        this.onTap,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
        constraints: BoxConstraints.loose(const Size(77.0, 32.0)),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
            color: isSelected ? ThemeColors.amber : ThemeColors.lightGrey),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
