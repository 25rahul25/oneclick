//
// class SharedPrefHelper {
//   static final SharedPrefHelper _sharedPrefHelper =
//   SharedPrefHelper._internal();
//
//   SharedPrefHelper._internal();
//
//   factory SharedPrefHelper() {
//     return _sharedPrefHelper;
//   }
//
//   static late SharedPreferences _prefs;
//
//   static init() async {
//     log.d("SharedPrefHelper - init");
//     _prefs = await SharedPreferences.getInstance();
//   }
//
//   Future<void> saveUserHasPackageSubscribed({required bool subscribed}) async {
//     await _prefs.setBool(SharedPrefConstants.keyPackageSubscribed, subscribed);
//   }
//
//   static Future<void> saveUserDetails({
//     required List<GetUserEntity> getUserEntity,
//   }) async {
//     List data = getUserEntity.map((e) => e.toMap()).toList();
//     String encodedData = jsonEncode(data);
//     await _prefs.setString(SharedPrefConstants.keyUserDetails, encodedData);
//   }
//
//   bool getPackageSubscribed() {
//     return _prefs.getBool(SharedPrefConstants.keyPackageSubscribed) ?? false;
//   }
//
//   static GetUserEntity? getUserDetails() {
//     List<GetUserEntity> getUser = [];
//     String data = _prefs.getString(SharedPrefConstants.keyUserDetails) ?? '';
//     if (data.isNotEmpty) {
//       List dataList = jsonDecode(data);
//       for (var list in dataList) {
//         getUser.add(GetUserEntity.fromMap(list));
//       }
//       return getUser.first;
//     } else {
//       return null;
//     }
//   }
//
//   void clear() {
//     _prefs.clear();
//   }
// }
