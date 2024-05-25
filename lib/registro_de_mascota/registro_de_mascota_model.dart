import '/flutter_flow/flutter_flow_util.dart';
import 'registro_de_mascota_widget.dart' show RegistroDeMascotaWidget;
import 'package:flutter/material.dart';

class RegistroDeMascotaModel extends FlutterFlowModel<RegistroDeMascotaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NombreMascota widget.
  FocusNode? nombreMascotaFocusNode;
  TextEditingController? nombreMascotaTextController;
  String? Function(BuildContext, String?)? nombreMascotaTextControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for Descripsion widget.
  FocusNode? descripsionFocusNode;
  TextEditingController? descripsionTextController;
  String? Function(BuildContext, String?)? descripsionTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreMascotaFocusNode?.dispose();
    nombreMascotaTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    descripsionFocusNode?.dispose();
    descripsionTextController?.dispose();
  }
}
