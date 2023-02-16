import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Api'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              return Container(
                child: Column(
                  children: [
                    Text(snapshot.data!['records'][0]['FacultyName'].toString(),
                        style: TextStyle(fontSize: 20)),
                   Image.network(snapshot.data!['records'][0]['FacultyImage']),
                    Text(snapshot.data!['records'][0]['FacultyProfileDescription'].toString())
                  ],
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: callEntriesApi()),
    );
  }

  Future<Map<String, dynamic>> callEntriesApi() async {
    http.Response res = await http.get(
      Uri.parse('https://arjunbala.com/DFaculty/apiNew.php/records/faculty/'),
    );

    Map<String, dynamic> map = jsonDecode(res.body.toString());
    return map;
  }
}
