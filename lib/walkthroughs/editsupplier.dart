import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final button6zz2gp25 = GlobalKey();
final buttonQ843ou2n = GlobalKey();
final buttonVbb0af3f = GlobalKey();
final textFieldZc2eh7x8 = GlobalKey();
final dropDownW54k7x21 = GlobalKey();
final textFieldSvbc32im = GlobalKey();

/// editsupplier
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: button6zz2gp25,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Save changes and go back to supplier list',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonQ843ou2n,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Go back without saving any changes',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: buttonVbb0af3f,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Delete supplier and all  its products',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldZc2eh7x8,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughWidget(
              partext: FFLocalizations.of(context).getText(
                '01xcgfwz' /* Change supplier name */,
              ),
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: dropDownW54k7x21,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughWidget(
              partext: FFLocalizations.of(context).getText(
                'ul4ku9xm' /* Select a new category */,
              ),
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textFieldSvbc32im,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughWidget(
              partext: FFLocalizations.of(context).getText(
                'v7ayi9w7' /* Change notes */,
              ),
            ),
          ),
        ],
      ),
    ];
