import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/components/category_tittle.dart';
import 'package:food_delivery_app/components/food_card.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/model/fake_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  alignment: Alignment.centerRight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Simple way to find \nTesty food',
                        style: Theme.of(context).textTheme.headline5),
                  ]),
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 20.0, left: 20.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryTittle(tittle: 'All', active: true),
                    CategoryTittle(tittle: 'Italian'),
                    CategoryTittle(tittle: 'Asian'),
                    CategoryTittle(tittle: 'chanese'),
                    CategoryTittle(tittle: 'Burgers'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kTextColor),
                          borderRadius: BorderRadius.circular(40.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: kBorderColor),
                          borderRadius: BorderRadius.circular(40.0)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: kBorderColor),
                          borderRadius: BorderRadius.circular(40.0))),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...FakeData.getFoods()
                        .map((food) =>
                            FoodCard(food: food, color: kPrimaryColor))
                        .toList(),
                    SizedBox(width: 20.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
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
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/plus.svg',
                width: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
