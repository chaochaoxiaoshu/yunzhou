import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yunzhou_vpn_desktop/helpers/get_client_info.dart';
import 'package:yunzhou_vpn_desktop/models/grpc_client.dart';
import 'package:yunzhou_vpn_desktop/output/user.pbgrpc.dart';

UserInfoProvider getUserInfoProvider(BuildContext context) {
  return Provider.of<UserInfoProvider>(context, listen: false);
}

class UserInfoProvider with ChangeNotifier {
  UserInfoProvider({required this.prefs});

  final SharedPreferences prefs;

  String get token {
    return prefs.getString('token') ?? '';
  }

  set token(String value) {
    prefs.setString('token', value);
    notifyListeners();
  }

  bool get isLogged {
    return token.isNotEmpty;
  }

  String get memberId {
    return prefs.getString('memberId') ?? '';
  }

  set memberId(String value) {
    prefs.setString('memberId', value);
    notifyListeners();
  }

  String get uuid {
    return prefs.getString('uuid') ?? '';
  }

  set uuid(String value) {
    prefs.setString('uuid', value);
    notifyListeners();
  }

  String get userId {
    return prefs.getString('userId') ?? '';
  }

  set userId(String value) {
    prefs.setString('userId', value);
  }

  String get guestId {
    return prefs.getString('guestId') ?? '';
  }

  set guestId(String value) {
    prefs.setString('guestId', value);
  }

  void reset() {
    prefs.setString('token', '');
    prefs.setString('memberId', '');
    prefs.setString('uuid', '');
    notifyListeners();
  }

  void checkGuest() async {
    if (token.isNotEmpty) return;
    final clientInfo = await getClientInfo();
    final res = await GrpcClient.shared.guestClient.guestCheck(
      GuestCheckReq(
        data: clientInfo,
      ),
    );
    guestId = res.id.toString();
  }
}
