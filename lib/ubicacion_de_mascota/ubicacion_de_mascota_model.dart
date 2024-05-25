import '/flutter_flow/flutter_flow_util.dart';
import 'ubicacion_de_mascota_widget.dart' show UbicacionDeMascotaWidget;
import 'package:flutter/material.dart';

class UbicacionDeMascotaModel
    extends FlutterFlowModel<UbicacionDeMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
