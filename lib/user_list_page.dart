import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/matrimony/add_user.dart';
import 'package:matrimony/model/city_model.dart';

import 'database.dart';

class UserListPage extends StatefulWidget {
  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddUser(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(
                    size: 17,
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text('Add'),
                ],
              ),
            ),
          )
        ],
        title: Row(
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text('User List'),
          ],
        ),
      ),
      body: FutureBuilder<List<CityModel>>(
        builder: (context, snapshot) {
          if (snapshot != null && snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        snapshot.data![index].CityName.toString(),
                      ),
                      Text(
                        snapshot.data![index].CityId.toString(),
                      ),
                    ],
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          } else {
            return Center(
              child: Text('No User Found'),
            );
          }
        },
        future: MyDatabase().getCityListFromTbl(),
      ),
    );
  }
}
