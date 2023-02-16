class UserModel {
  late int _UserId;
  late String _Name;
  late String _DOB;
  late int _CityId;

  int get UserId => _UserId;

  set UserId(int UserId) {
    _UserId = UserId;
  }

  String get Name => _Name;

  set Name(String Name) {
    _Name = Name;
  }

  String get DOB => _DOB;

  set DOB(String DOB) {
    _DOB = DOB;
  }

  int get CityId => _CityId;

  set CityId(int CityId) {
    _CityId = CityId;
  }
}
