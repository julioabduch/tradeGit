import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final buttonB5ofr6p0 = GlobalKey();
final buttonWjvjqn5a = GlobalKey();
final dropDownDhi6tocz = GlobalKey();
final buttonPqm5x8xa = GlobalKey();

/// addcategory
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: buttonB5ofr6p0,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Save new category and go back',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonWjvjqn5a,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Go back without saving',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: dropDownDhi6tocz,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Choose category to delete',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: buttonPqm5x8xa,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughWidget(
              partext: 'Delete category and go back',
            ),
          ),
        ],
      ),
    ];
