import 'package:flutter/material.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_mode.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_route.dart';
import 'package:yunzhou_vpn_desktop/models/acceleration_status.dart';

class AccelerationProvider with ChangeNotifier {
  AccelerationStatus _status = AccelerationStatus.disconnected;
  AccelerationRoute _route = AccelerationRoute.accelerationRoutes.first;
  int? _subRouteIndex;
  AccelerationMode _mode = AccelerationMode.global;

  AccelerationStatus get status => _status;
  AccelerationRoute get route => _route;
  int? get subRouteIndex => _subRouteIndex;
  AccelerationMode get mode => _mode;

  void connect() {
    _status = AccelerationStatus.connecting;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 1000), () {
      _status = AccelerationStatus.connected;
      notifyListeners();
    });
  }

  void disconnect() {
    _status = AccelerationStatus.disconnected;
    notifyListeners();
  }

  void updateRoute({
    required AccelerationRoute route,
    int? subRouteIndex,
  }) {
    _route = route;
    _subRouteIndex = subRouteIndex;
    notifyListeners();
  }

  void updateMode(AccelerationMode mode) {
    _mode = mode;
    notifyListeners();
  }
}
