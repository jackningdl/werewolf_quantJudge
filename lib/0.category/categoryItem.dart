import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String routeName;

  CategoryItem(this.id, this.title, this.color, this.routeName);

  void selectCategory(BuildContext ctx) {
    print(ctx);
    Navigator.of(ctx).pushNamed(
      routeName,
      arguments: {'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Platform.isIOS
          ? CupertinoButton(
              onPressed: () => selectCategory(context),
              color: color,
              child: Text(
                title,
                style: Theme.of(context).textTheme.display1,
              ),
            )
          : InkWell(
              onTap: () => selectCategory(context),
              splashColor: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.display1,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color.withOpacity(0.7), color],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
    );
  }
}
