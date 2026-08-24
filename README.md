# CCE-106 Activities

A consolidated Flutter application for CCE-106 school activities.

## Current structure

- **Activity 01 — Flutter Widget Designing**
  - Dynamic Widget exercise
  - Dynamic star rating and review count
  - Reusable PREP / COOK / FEEDS icon tabs
  - Strawberry Pavlova layout
  - `ListView`-based final screen

Future CCE-106 activities will be added as separate modules and exposed through the main activity menu. The Login/Register activity can later become the application's authentication entry point.

## Run locally

This repository focuses on the Flutter application source. If platform folders are not yet present after cloning, generate them once with:

```bash
flutter create .
flutter pub get
flutter run
```

## Project organization

```text
lib/
├── main.dart
├── models/
│   └── activity_item.dart
├── screens/
│   └── home/
│       └── activity_hub_page.dart
└── activities/
    └── activity_01_widget_designing/
        ├── activity_01_page.dart
        ├── dynamic_page.dart
        └── icon_page.dart

assets/
└── activity_01/
    ├── pavlova.jpeg
    └── photo_male_1.jpg
```
