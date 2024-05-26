import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final buttonR24syrhk = GlobalKey();
final buttonHohnorvf = GlobalKey();
final button5nbr0f8j = GlobalKey();

/// suppliers
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: buttonR24syrhk,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to add a product',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonHohnorvf,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to view all products of this supplier',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: button5nbr0f8j,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to go back to supplier list',
            ),
          ),
        ],
      ),
    ];
