import 'package:http/http.dart' as http;

class RegisterModel {
  Future register({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String gender,
    required String state,
    required String city,
    required String address,
  }) async {
    print("start");
    var uri = Uri.parse("https://one-click-backend.onrender.com/api/user/register");
    try {
      var response = await http.post(
        uri,
        body: {
          "name": name,
          "email_address": email,
          "phone": phone,
          "password": password,
          "gender": gender,
          "state": state,
          "city": city,
          "address": address
        },
      );

      if (response.statusCode == 200) {
        print("Response : ${response.body}");
      }
    } catch (e) {
      print("Error : $e");
    }
  }
}
