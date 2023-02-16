import 'dart:io';
import 'package:flutter/services.dart';
import 'package:matrimony/model/city_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matrimony.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "matrimony.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'matrimony.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }

  Future<void> insertIntoUserTable(CityId, userName, dob) async {
    Database db = await initDatabase();
    Map<String, Object?> map = Map();
    map['Name'] = userName;
    map['Dob'] = dob;
    map['CityId'] = CityId;

    print('CHECK:::WHAT:::${await db.insert('Tbl_User', map)}');
  }

  Future<List<CityModel>> getCityListFromTbl() async {
    List<CityModel> CityList = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
    await db.rawQuery('SELECT * FROM Mst_City');
    CityModel model =
    CityModel(StateID1: -1, CityName1: 'Select City', CityID1: -1);

    CityList.add(model);

    for (int i = 0; i < data.length; i++) {
      CityModel model = CityModel(
          CityID1: data[i]['CityId'] as int,
          CityName1: data[i]['CityName'].toString(),
          StateID1: data[i]['StateID'] as int);

      CityList.add(model);
    }
    return CityList;
  }
}
