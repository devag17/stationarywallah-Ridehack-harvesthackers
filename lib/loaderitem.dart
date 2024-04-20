import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'loader_item_model.dart';
export 'loader_item_model.dart';

class LoaderItemWidget extends StatefulWidget {
  const LoaderItemWidget({super.key});

  @override
  State<LoaderItemWidget> createState() => _LoaderItemWidgetState();
}

class _LoaderItemWidgetState extends State<LoaderItemWidget> {
  late LoaderItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoaderItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.48,
          height: 150,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(1, -1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 12, 0),
              child: Container(
                width: 32,
                height: 32,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1, -1),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: Container(
            width: 140,
            height: 21,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
          child: Container(
            width: 60,
            height: 18,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ],
    );
  }
}
