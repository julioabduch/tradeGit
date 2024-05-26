import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final buttonLshju525 = GlobalKey();
final textIcilumnk = GlobalKey();
final icon73otyc5i = GlobalKey();

/// listsuppliers
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: buttonLshju525,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to add new supplier',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textIcilumnk,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to see supplier details',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: icon73otyc5i,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to edit supplier information',
            ),
          ),
        ],
      ),
    ];
