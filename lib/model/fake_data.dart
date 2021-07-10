import 'package:food_delivery_app/model/food.dart';

class FakeData {
  static List<Food> getFoods() {
    List<Food> foods = [];
    foods.add(
      Food(
        tag: 'tag1',
        calories: '402Kcal',
        title: "Vegan salad bowl",
        subtitle: 'with red tomato',
        price: '\$20',
        imageUrl: 'assets/images/image_1.png',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
      ),
    );

    foods.add(
      Food(
        tag: 'tag2',
        calories: '402Kcal',
        title: "Vegan salad bowl",
        subtitle: 'with red tomato',
        price: '\$20',
        imageUrl: 'assets/images/image_2.png',
        description:
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
      ),
    );

    return foods;
  }
}
