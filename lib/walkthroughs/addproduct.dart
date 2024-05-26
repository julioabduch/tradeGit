import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final imageNbfchier = GlobalKey();
final button4v1xl4i7 = GlobalKey();
final button45aijao1 = GlobalKey();
final iconButtonFzs2suku = GlobalKey();

/// addproduct
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: imageNbfchier,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext:
                  'Click to add photo. You MUST select 2 pictures to save product information',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: button4v1xl4i7,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to save information',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: button45aijao1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Click to go back without saving any information',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonFzs2suku,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext:
                  'Click to ask your chinese speaking partner about this information',
            ),
          ),
        ],
      ),
    ];
