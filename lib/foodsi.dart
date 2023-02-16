import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foodsi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Image.network(
                    "https://eu-trademark.s3.amazonaws.com/018513845",
                    height: 140,
                    width: 375,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: const Text(
                      'Catch delicious food \n bofore it goes to waste',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    color: Color.fromARGB(255, 114, 220, 100),
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    color: Color.fromARGB(255, 114, 220, 100),
                    child: SizedBox(
                      width: 300,
                      height: 60,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: const Text(
                'Continue with',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(46, 25, 0, 0),
                  child: SizedBox(
                    width: 130,
                    child: Container(
                      color: Colors.white,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: BorderSide(width: 1),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.apple_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 25, 0, 0),
                  child: SizedBox(
                    width: 130,
                    child: Container(
                      color: Colors.white,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          side: BorderSide(width: 1),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.facebook_sharp,
                          color: Colors.blue,
                        ),
                      ),
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
