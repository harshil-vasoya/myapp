import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDeliveryPage1 extends StatefulWidget {
  @override
  State<FoodDeliveryPage1> createState() => _FoodDeliveryPage1State();
}

class _FoodDeliveryPage1State extends State<FoodDeliveryPage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        //resizeToAvoidBottomPadding: false,
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
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
                    icon: const Icon(
                      Icons.menu_sharp,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(65, 20, 0, 0),
                  child: Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: const Text(
                      'Search Food',
                      //textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                //   child: Image.network(
                //     "https://thumbs.dreamstime.com/b/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg",
                //     width: 60,
                //   ),
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      width: 0.1,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://thumbs.dreamstime.com/b/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 310,
                  height: 70,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(23.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[600]),
                          hintText: "Healthy Food",
                          contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          fillColor: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      width: 05,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu_sharp,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 5, color: Colors.white),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const CircleAvatar(
                                    radius: 18,
                                    backgroundImage: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAAWnv0SX57PQMqHiCKW7PwPWfaQhqEt7nGaR8ZpPwX3N2vg3gSMhqzq2uXYl-R0IknQ&usqp=CAU'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Text(
                                    'Fast Food',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAAWnv0SX57PQMqHiCKW7PwPWfaQhqEt7nGaR8ZpPwX3N2vg3gSMhqzq2uXYl-R0IknQ&usqp=CAU'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Fast Food',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 5, 0, 5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZAAWnv0SX57PQMqHiCKW7PwPWfaQhqEt7nGaR8ZpPwX3N2vg3gSMhqzq2uXYl-R0IknQ&usqp=CAU'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Fast Food',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 65,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1628840042765-356cda07504e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVwcGVyb25pJTIwcGl6emF8ZW58MHx8MHx8&w=1000&q=80'),
                            ),
                            Text(
                              'Veg Extravaganza',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Spicy & Veg',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '\$ 36.00',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 65,
                              backgroundImage: NetworkImage(
                                  'https://static4.depositphotos.com/1013245/351/i/450/depositphotos_3513521-stock-photo-whole-pepperoni-pizza.jpg'),
                            ),
                            Text(
                              'Veg Extravaganza',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Spicy & Veg',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '\$ 36.00',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Column(
                          children: const [
                            CircleAvatar(
                              radius: 65,
                              backgroundImage: NetworkImage(
                                  'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Homemade-Pizza_EXPS_HCA20_376_E07_09_2b.jpg'),
                            ),
                            Text(
                              'Veg Extravaganza',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Spicy & Veg',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              '\$ 36.00',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(25, 8, 0, 0),
                  child: const Text(
                    'Favorite Restaurants',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(23.0),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(120, 8, 0, 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text('See all'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    'https://www.multispice.co.in/resources/Multispice-Manali/images/background/thumbnails/restaurant.jpg'),
                              ),
                              Column(
                                children: [
                                  Text('Foodcave\nRestaurants'),
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(10, 6, 0, 0),
                                        child: Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 254, 189, 46),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                        child: Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 254, 189, 46),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                        child: Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 254, 189, 46),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                        child: Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 254, 189, 46),
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                        child: Icon(
                                          Icons.star_half,
                                          color:
                                              Color.fromARGB(255, 254, 189, 46),
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text('Gujrat , India'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://www.multispice.co.in/resources/Multispice-Manali/images/background/thumbnails/restaurant.jpg'),
                            ),
                            Column(
                              children: [
                                Text('Foodcave\nRestaurants'),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10, 6, 0, 0),
                                      child: Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 254, 189, 46),
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                      child: Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 254, 189, 46),
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                      child: Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 254, 189, 46),
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                      child: Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 254, 189, 46),
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                      child: Icon(
                                        Icons.star_half,
                                        color:
                                            Color.fromARGB(255, 254, 189, 46),
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text('Gujrat , India'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 30, 20, 5),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 0.2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home,
                            color: Color.fromARGB(255, 254, 189, 46),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
