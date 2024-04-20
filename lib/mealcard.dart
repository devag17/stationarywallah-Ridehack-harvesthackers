import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'meal_card_model.dart';
export 'meal_card_model.dart';

class MealCardWidget extends StatefulWidget {
  const MealCardWidget({
    super.key,
    this.mealRef,
  });

  final MealsRecord? mealRef;

  @override
  State<MealCardWidget> createState() => _MealCardWidgetState();
}

class _MealCardWidgetState extends State<MealCardWidget>
    with TickerProviderStateMixin {
  late MealCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCardModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0, 0),
            end: Offset(1, 1),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('MEAL_CARD_COMP_Column_7nse8gf3_ON_TAP');
        logFirebaseEvent('Column_haptic_feedback');
        HapticFeedback.lightImpact();
        logFirebaseEvent('Column_navigate_to');

        context.pushNamed(
          'MealDetails',
          pathParameters: {
            'mealRef': serializeParam(
              widget.mealRef,
              ParamType.Document,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            'mealRef': widget.mealRef,
          },
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('MEAL_CARD_COMP_Container_xsjr6r56_ON_TAP');
              logFirebaseEvent('Container_haptic_feedback');
              HapticFeedback.lightImpact();
              logFirebaseEvent('Container_navigate_to');

              context.pushNamed(
                'MealDetails',
                pathParameters: {
                  'mealRef': serializeParam(
                    widget.mealRef,
                    ParamType.Document,
                  ),
                }.withoutNulls,
                extra: <String, dynamic>{
                  'mealRef': widget.mealRef,
                },
              );
            },
            onDoubleTap: () async {
              logFirebaseEvent('MEAL_CARD_Container_xsjr6r56_ON_DOUBLE_T');
              if (widget.mealRef!.mealFavorites
                  .contains(currentUserReference)) {
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.lightImpact();
                logFirebaseEvent('Container_backend_call');

                await widget.mealRef!.reference.update({
                  ...mapToFirestore(
                    {
                      'meal_favorites':
                          FieldValue.arrayRemove([currentUserReference]),
                    },
                  ),
                });
              } else {
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.selectionClick();
                logFirebaseEvent('Container_wait__delay');
                await Future.delayed(const Duration(milliseconds: 100));
                logFirebaseEvent('Container_haptic_feedback');
                HapticFeedback.lightImpact();
                logFirebaseEvent('Container_backend_call');

                await widget.mealRef!.reference.update({
                  ...mapToFirestore(
                    {
                      'meal_favorites':
                          FieldValue.arrayUnion([currentUserReference]),
                    },
                  ),
                });
              }
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.48,
              height: 150,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/r0dvv_R.png',
                  ).image,
                ),
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
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('MEAL_CARD_COMP_Stack_83960l4l_ON_TAP');
                      if (widget.mealRef!.mealFavorites
                          .contains(currentUserReference)) {
                        logFirebaseEvent('Stack_haptic_feedback');
                        HapticFeedback.lightImpact();
                        logFirebaseEvent('Stack_backend_call');

                        await widget.mealRef!.reference.update({
                          ...mapToFirestore(
                            {
                              'meal_favorites': FieldValue.arrayRemove(
                                  [currentUserReference]),
                            },
                          ),
                        });
                      } else {
                        logFirebaseEvent('Stack_haptic_feedback');
                        HapticFeedback.selectionClick();
                        logFirebaseEvent('Stack_wait__delay');
                        await Future.delayed(const Duration(milliseconds: 100));
                        logFirebaseEvent('Stack_haptic_feedback');
                        HapticFeedback.lightImpact();
                        logFirebaseEvent('Stack_backend_call');

                        await widget.mealRef!.reference.update({
                          ...mapToFirestore(
                            {
                              'meal_favorites':
                                  FieldValue.arrayUnion([currentUserReference]),
                            },
                          ),
                        });
                      }
                    },
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
                          if (widget.mealRef?.mealFavorites
                                  ?.contains(currentUserReference) ??
                              true)
                            Align(
                              alignment: AlignmentDirectional(1, -1),
                              child: Icon(
                                Icons.favorite_rounded,
                                color: Color(0xFFFF4E59),
                                size: 32,
                              ).animateOnPageLoad(
                                  animationsMap['iconOnPageLoadAnimation']!),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (widget.mealRef!.mealDiet.length > 0)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
          Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              'APSARA PENCIL',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 20,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 1,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
