import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDeliveryPage2 extends StatefulWidget {
  @override
  State<FoodDeliveryPage2> createState() => _FoodDeliveryPage2State();
}

class _FoodDeliveryPage2State extends State<FoodDeliveryPage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    'https://static6.depositphotos.com/1019958/565/i/950/depositphotos_5654806-stock-photo-pizza-vegetarian.jpg'),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(255, 20, 0, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: Color.fromARGB(255, 254, 114, 76),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(22, 0, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 254, 186, 46),
                          ),
                        ),
                        TextSpan(
                          text: '5.0',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(160, 0, 0, 0),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    color: Color.fromARGB(255, 254, 186, 46),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.remove,
                          ),
                        ),
                        TextSpan(
                          text: ' 02 ',
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.add,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 35, 0, 0),
                      child: Text(
                        'Las Vegas \nTreat Pizaa',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.alarm,
                                  color: Colors.orange,
                                ),
                              ),
                              TextSpan(
                                text: '10-15 Mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 25, 0, 0),
              child: Text(
                'Grilled paneer,cheese and healthy to vegetable salad of fresh tomato,onion',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                  child: const Text(
                    'Toping for you',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(90, 20, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'Clear',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 35, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            'https://www.pngkit.com/png/detail/191-1916542_peppers-green-capsicum.png',
                            width: 80,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Icon(
                          Icons.add_circle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 35, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            'https://www.kindpng.com/picc/m/334-3344161_fresh-image-purepng-free-broccoli-transparent-background-png.png',
                            width: 60,
                            height: 55,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: Icon(
                          Icons.remove_circle,
                          color: Color.fromARGB(255, 254, 186, 46),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 35, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            'https://www.nicepng.com/png/detail/5-57258_red-onion-png-clipart-red-onion-png.png',
                            width: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 35, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            'https://thumbs.dreamstime.com/b/tomatoes-half-tomato-isolated-white-png-file-transparent-background-tomatoes-half-tomato-isolated-white-136961939.jpg',
                            width: 80,
                            height: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                      child: Text(
                        'Total Price',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 5, 0, 0),
                      child: Text(
                        '\$ 36.00',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(50, 40, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Container(
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '   Go To Cart   ',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
