import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final buttonWuyjyga6 = GlobalKey();
final iconButtonD5vvxqw5 = GlobalKey();

/// produtos1
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: buttonWuyjyga6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughWidget(
              partext: FFLocalizations.of(context).getText(
                'lkkgy0vu' /* time */,
              ),
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonD5vvxqw5,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughWidget(
              partext: FFLocalizations.of(context).getText(
                'kkwgos9t' /* Ask your chinese speaking part... */,
              ),
            ),
          ),
        ],
      ),
    ];
