import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/backend.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  final _loggeduserManager = FutureRequestManager<List<TblUsersRow>>();
  Future<List<TblUsersRow>> loggeduser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<TblUsersRow>> Function() requestFn,
  }) =>
      _loggeduserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoggeduserCache() => _loggeduserManager.clear();
  void clearLoggeduserCacheKey(String? uniqueKey) =>
      _loggeduserManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
