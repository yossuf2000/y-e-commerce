import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button_chep_try_model.dart';
export 'button_chep_try_model.dart';

class ButtonChepTryWidget extends StatefulWidget {
  const ButtonChepTryWidget({
    super.key,
    required this.chipName,
    required this.choice,
    required this.changeChoice,
  });

  final String? chipName;
  final String? choice;
  final Future Function(String thechoice)? changeChoice;

  @override
  State<ButtonChepTryWidget> createState() => _ButtonChepTryWidgetState();
}

class _ButtonChepTryWidgetState extends State<ButtonChepTryWidget> {
  late ButtonChepTryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonChepTryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.changeChoice?.call(
          widget.chipName,
        );
      },
      text: widget.chipName!,
      options: FFButtonOptions(
        height: 42.0,
        padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.choice == widget.chipName
            ? FlutterFlowTheme.of(context).primary
            : FlutterFlowTheme.of(context).primaryBackground,
        textStyle: FlutterFlowTheme.of(context).titleMedium.override(
              fontFamily: 'DM Sans',
              fontSize: 16.0,
              letterSpacing: 0.0,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: widget.choice == widget.chipName
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).tertiary,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
