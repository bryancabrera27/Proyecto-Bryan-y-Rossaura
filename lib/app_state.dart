import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _TemporalImage = '';
  String get TemporalImage => _TemporalImage;
  set TemporalImage(String value) {
    _TemporalImage = value;
  }

  String _DescripsionDeMascota = '';
  String get DescripsionDeMascota => _DescripsionDeMascota;
  set DescripsionDeMascota(String value) {
    _DescripsionDeMascota = value;
  }

  String _NombreDeMascota = '';
  String get NombreDeMascota => _NombreDeMascota;
  set NombreDeMascota(String value) {
    _NombreDeMascota = value;
  }

  String _Oner = '';
  String get Oner => _Oner;
  set Oner(String value) {
    _Oner = value;
  }

  String _MacotaImage = '';
  String get MacotaImage => _MacotaImage;
  set MacotaImage(String value) {
    _MacotaImage = value;
  }
}
