import '/backend/schema/structs/index.dart';
import '/components/b_t_dropdown_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool bag = false;

  List<ProductStruct> resultsearch = [];
  void addToResultsearch(ProductStruct item) => resultsearch.add(item);
  void removeFromResultsearch(ProductStruct item) => resultsearch.remove(item);
  void removeAtIndexFromResultsearch(int index) => resultsearch.removeAt(index);
  void insertAtIndexInResultsearch(int index, ProductStruct item) =>
      resultsearch.insert(index, item);
  void updateResultsearchAtIndex(int index, Function(ProductStruct) updateFn) =>
      resultsearch[index] = updateFn(resultsearch[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Models for BT_dropdown dynamic component.
  late FlutterFlowDynamicModels<BTDropdownModel> bTDropdownModels;

  @override
  void initState(BuildContext context) {
    bTDropdownModels = FlutterFlowDynamicModels(() => BTDropdownModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bTDropdownModels.dispose();
  }
}
