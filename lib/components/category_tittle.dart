import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class CategoryTittle extends StatelessWidget {
  final String tittle;
  final bool active;

  const CategoryTittle({required this.tittle, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 30.0),
      child: Text(
        tittle,
        style: Theme.of(context).textTheme.button!.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(0.7)),
      ),
    );
  }
}
