import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:one_click/baseUrl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/models/login_model.dart';
import 'models/models/startup_inset_model.dart';
import 'models/models/user_display_model.dart';

class LoginApi {
  LoginApi();

  Future<LoginModel> loginApiList(email, password) async {
    var url = ("$LURL/api/user/login");

    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"}, body: jsonEncode({"email": email, "password": password}));
    var data = json.decode(response.body);
    // print(data.message);
    print("Login......${response.body}");

    return LoginModel.fromJson(data);
  }
}

class RegistrationApi {
  Future registrationApiList(name, contact, email, password, address, pincode) async {
    var url = "$LURL/api/user/register";
    // Create a Map for the body
    var requestBody = {
      "name": name,
      "contact": contact,
      "email": email,
      "password": password,
      "address": address,
      "city": 'ahmedabad',
      "state": 'gujrat',
      "pincode": pincode,
    };

    // Convert the body to JSON
    String jsonBody = jsonEncode(requestBody);

    // Make the HTTP POST request
    http.Response response = await http.post(
      Uri.parse(url),
      headers: {"content-type": "application/json"},
      body: jsonBody,
    );

    var data = json.decode(response.body);
    print(data['message']); // Access 'message' from the decoded JSON response
    print("Registration......${response.body}");
    // return RegistrationModel.fromJson(data);
  }

// Future registrationApiList(name, contact, email, password, address, pincode) async {
  //   var url = ("$LURL/api/user/register");
  //
  //   http.Response response = await http.post(Uri.parse(url),
  //       headers: {"content-type": "application/json"},
  //       body: {
  //         "name": name,
  //         "contact": contact,
  //         "email": email,
  //         "password": password,
  //         "address": address,
  //         "city": 'ahmedabad',
  //         "state": 'gujrat',
  //         "pincode": pincode,
  //       });
  //   var data = json.decode(response.body);
  //   print(data.message);
  //   print("Registration......${response.body}");
  //   // return RegistrationModel.fromJson(data);
  // }
}

class UserDisplayApi {
  UserDisplayApi();

  Future<UserDisplayModel> userDisplayList() async {
    SharedPreferences pref0 = await SharedPreferences.getInstance();
    var pref = pref0.getString("user");
    var url = "$LURL/api/user/display";
    http.Response response = await http.get(Uri.parse(url), headers: {
      "content-type": "application/json",
      "Authorization": pref.toString()

    });
    var data = jsonDecode(response.body);
    print("User Display.. ${response.body}");
    return UserDisplayModel.fromJson(data);
  }
}

class StartUpInsertApi {
  StartUpInsertApi();

  Future<StartUpInsertModel> startUpInsertList(startUpName, number, person, city, pincode) async {
    var url = ("$LURL/api/startup/insert");
    SharedPreferences pref0 = await SharedPreferences.getInstance();
    var pref = pref0.getString("user");
  //  const userId = "622ca5ed6e0ea05607ef1acc";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json", "Authorization": pref.toString()},
        body: jsonEncode({
          // "userId": userId,
          // "622ca5ed6e0ea05607ef1acc",
          "startupName": startUpName,
          "address": "maninagar",
          "contactNumber": number,
          "contactPerson": person,
          "email": "king@gmail.com",
          "city": city,
          "state": "gujarat",
          "country": "india",
          // "inqubationCenterId": "63a724f047aec9e585c05232",
          // "inqubationCenterCity": "inqubationCenterCity1",
          // "categoryId": "63aff5e516ced6bee77c6ad0",
          // "subcategoryId": "63aff62116ced6bee77c6ad2",
          // "startupLogo": "",
          // "yearOfEstablished": 2020,
          // "registeredAs": "registeredAs8",
          "pincode": pincode,
        }));
    var data = json.decode(response.body);
    // print(data.message);
    print("startUp insert ......${response.body}");
    return StartUpInsertModel.fromJson(data);
  }
}
