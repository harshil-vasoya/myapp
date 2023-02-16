class CityModel {
  late int CityID1;
  late String CityName1;
  late int StateID1;

  CityModel(
      {required this.CityID1, required this.CityName1, required this.StateID1});

  int get CityId => CityID1;

  set CityId(int CityId) {
    CityID1 = CityId;
  }

  String get CityName => CityName1;

  set CityName(String CityName) {
    CityName1 = CityName;
  }

  int get StateID => StateID1;

  set StateID(int StateID) {
    StateID1 = StateID;
  }
}
