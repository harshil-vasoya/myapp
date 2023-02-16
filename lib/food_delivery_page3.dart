import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDeliveyPage3 extends StatefulWidget {
  @override
  State<FoodDeliveyPage3> createState() => _FoodDeliveyPage3State();
}

class _FoodDeliveyPage3State extends State<FoodDeliveyPage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 15, 0, 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      width: 0.1,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(250, 20, 0, 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      width: 0.1,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_rounded),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Text(
                      'My',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(28, 0, 0, 0),
                    child: Text(
                      'Cart List',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://cdn.imgbin.com/6/22/4/imgbin-pizza-ixb1uA9h3g4Ecx8R6JmmnHa6D.jpg'),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Text(
                        'Pepperoni Pizza',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 25, 0),
                          child: Text(
                            '\$13.99',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 3),
                          child: Text(
                            '   x2',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Color.fromARGB(255, 57, 57, 57),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              size: 20,
                              color: Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
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
                  margin: EdgeInsets.fromLTRB(30, 25, 0, 0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://toppng.com/uploads/preview/pizza-png-11553999344wb73hs4lcy.png'),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(21, 10, 0, 0),
                      child: Text(
                        'The Works Pizza',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 30, 0),
                          child: Text(
                            '\$30.99',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 3),
                          child: Text(
                            '   x2',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 20, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Color.fromARGB(255, 57, 57, 57),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              size: 20,
                              color: Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(100, 25, 0, 0),
              child: Row(
                children: [
                  Image.network(
                    'https://cdn4.iconfinder.com/data/icons/e-commerce-vol-1/512/4-512.png',
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Do you have any discount code?',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                  child: Text(
                    'Subtotal',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(200, 30, 0, 0),
                  child: Text(
                    '\$ 96.00',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                  child: Text(
                    'Est.Tax',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(220, 30, 0, 0),
                  child: Text(
                    '2.00',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                  child: Text(
                    'Delivery',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(214, 30, 0, 0),
                  child: Text(
                    'Free',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(40, 15, 0, 0),
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(218, 15, 0, 0),
                  child: Text(
                    '\$ 98.00',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 254, 186, 46),
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(115, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Checkout',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_right_alt,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
