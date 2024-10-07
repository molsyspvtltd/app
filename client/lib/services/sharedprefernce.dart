import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  loggIn(String id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isLoggedIn', true);
    await pref.setString('id', id);

  }

  loggOut() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isLoggedIn', false);
    await pref.setString('id', '');
  }

  Future<bool> getloggInStatus() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? status = pref.getBool('isLoggedIn');
    if (status == null) {
      return false;
    } else {
      return status;
    }
  }

  Future<String> getId() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String id = pref.getString('id')!;
    print('inside shared pref id :$id');
    return id;
  }
}
