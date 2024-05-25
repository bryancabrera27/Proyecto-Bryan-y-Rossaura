import '/flutter_flow/flutter_flow_util.dart';
import 'informacio_de_mascota_widget.dart' show InformacioDeMascotaWidget;
import 'package:flutter/material.dart';

class InformacioDeMascotaModel
    extends FlutterFlowModel<InformacioDeMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
