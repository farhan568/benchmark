import '/backend/supabase/supabase.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for yourName widget.
  TextEditingController? name;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? priceController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for role widget.
  TextEditingController? brandController;
  String? Function(BuildContext, String?)? roleControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for image widget.
  Uint8List? file;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  void dispose() {
    sideBarNavModel.dispose();
    name?.dispose();
    descriptionController?.dispose();
    priceController?.dispose();
    brandController?.dispose();
    passwordController?.dispose();
  }

  /// Additional helper methods are added here.

}
