import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/screens/detail.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  final Color color;

  const FoodCard({required this.food, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          CupertinoPageRoute(builder: (context) => DetailScreen(food: food))),
      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: Container(
                width: 250,
                height: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimaryColor.withOpacity(0.09)),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: color.withOpacity(0.15)),
              ),
            ),
            Positioned(
              top: 0.0,
              left: -45.0,
              child: Container(
                height: 184,
                width: 270,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(food.imageUrl)),
                ),
              ),
            ),
            Positioned(
                top: 100.0,
                right: 15.0,
                child: Text(
                  food.price,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: kPrimaryColor),
                )),
            Positioned(
              top: 200.0,
              left: 40.0,
              child: Container(
                width: 200.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      food.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: kTextColor),
                    ),
                    Text(
                      food.subtitle,
                      style: TextStyle(color: kTextColor.withOpacity(0.5)),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      food.description,
                      maxLines: 2,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      food.calories,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.8),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
