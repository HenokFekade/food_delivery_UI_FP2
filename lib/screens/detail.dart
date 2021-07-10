import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/model/food.dart';

class DetailScreen extends StatelessWidget {
  final Food food;

  const DetailScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: SvgPicture.asset('assets/icons/backward.svg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, top: 10.0),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    height: 310,
                    width: 310,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(food.imageUrl))),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              style:
                                  TextStyle(color: kTextColor.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Text(
                          food.price,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Text(
                      food.description,
                      style: TextStyle(
                        color: kTextColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 18.0),
                          decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Row(
                            children: [
                              Text(
                                'Add to bag',
                                style: Theme.of(context)
                                    .textTheme
                                    .button!
                                    .copyWith(fontSize: 16.0),
                              ),
                              SizedBox(width: 20.0),
                              SvgPicture.asset('assets/icons/forward.svg')
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('float button tabbed!');
                          },
                          child: Container(
                            height: 65.0,
                            width: 65.0,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/icons/bag.svg',
                                      width: 20.0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: kWhiteColor),
                                    child: Center(
                                      child: Text(
                                        '0',
                                        style: Theme.of(context)
                                            .textTheme
                                            .button!
                                            .copyWith(
                                                fontSize: 18.0,
                                                color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
