# CCE-106 Activities

A consolidated Flutter application for my CCE-106 school activities.

Instead of keeping every exercise in a separate Flutter project, this repository uses one application with an activity menu. Each new activity lives in its own module under `lib/activities/` so the original requirements remain easy to inspect and future activities can be added without cluttering the project.

## Current activities

### Activity 01 — Flutter Widget Designing
Implements the previous Flutter activity covering:
- `StatelessWidget`
- `Scaffold`, `AppBar`, and body layout
- `Row`, `Column`, `Center`, and `SizedBox`
- reusable widget-building functions
- dynamic star rating using loops
- reusable icon tabs with parameters
- local image assets
- `ListView` for scrollable content

The activity includes the Dynamic Widget exercise and the final Strawberry Pavlova/Icon Widget implementation.

### Activity 02 — Row and Column Alignment
Implements the alignment examples from the provided CCE-106 handout.

Included examples:
- Row `MainAxisAlignment`: `center`, `spaceAround`, `spaceBetween`, `spaceEvenly`, `start`, `end`
- Row `CrossAxisAlignment`: `start`, `end`, `center`, `stretch`
- Column `MainAxisAlignment`: `center`, `spaceAround`, `spaceBetween`, `spaceEvenly`, `start`, `end`
- Column `CrossAxisAlignment`: `center`, `start`, `end`, `stretch`

Each alignment section is displayed inside a visible border, and each group is placed on a scrollable page so the examples can be viewed and screenshotted one at a time. The colored containers follow the handout examples: red `90x90`, yellow `80x80`, and blue `70x70`.

## Project structure

```text
lib/
├── main.dart
├── models/
│   └── activity_item.dart
├── screens/
│   └── home/
│       └── activity_hub_page.dart
└── activities/
    ├── activity_01_widget_designing/
    │   ├── activity_01_page.dart
    │   ├── dynamic_page.dart
    │   └── icon_page.dart
    └── activity_02_alignment/
        └── activity_02_page.dart

assets/
└── activity_01/
    ├── pavlova.jpeg
    └── photo_male_1.jpg
```

## Run locally

If Flutter platform folders are not present after cloning, generate them once:

```bash
flutter create .
flutter pub get
flutter run
```

Future CCE-106 activities will be added to the same application and registered in the activity menu. A future Login/Register activity can become the application's authentication entry point.
