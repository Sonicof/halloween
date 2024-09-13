import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'b_t_dropdown_model.dart';
export 'b_t_dropdown_model.dart';

class BTDropdownWidget extends StatefulWidget {
  const BTDropdownWidget({
    super.key,
    this.options,
  });

  final List<String>? options;

  @override
  State<BTDropdownWidget> createState() => _BTDropdownWidgetState();
}

class _BTDropdownWidgetState extends State<BTDropdownWidget> {
  late BTDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BTDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(
        _model.dropDownValue ??= 'option1',
      ),
      options: widget.options!,
      onChanged: (val) => safeSetState(() => _model.dropDownValue = val),
      width: double.infinity,
      height: 32.0,
      textStyle: FlutterFlowTheme.of(context).bodySmall.override(
            fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
            letterSpacing: 0.0,
            useGoogleFonts: GoogleFonts.asMap()
                .containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
          ),
      hintText: 'Click Here',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 14.0,
      ),
      fillColor: FlutterFlowTheme.of(context).alternate,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 7.0, 14.0, 7.0),
      hidesUnderline: true,
      isOverButton: false,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
