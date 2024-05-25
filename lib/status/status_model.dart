import '/flutter_flow/flutter_flow_util.dart';
import 'status_widget.dart' show StatusWidget;
import 'package:flutter/material.dart';

class StatusModel extends FlutterFlowModel<StatusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
