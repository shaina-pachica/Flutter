# Flutter Development Assignment
### Overview
This project was implemented based on the provided Figma design within ~22 hours (18 hours of straight coding). The goal was to follow the assignment guidelines, focusing on clean architecture, state management with GetX, and reactive UI.

[Figma Design by Supercoder (Korean Text)](https://www.figma.com/design/nTWqe0LRliDCpCzzq4Dnch/Developer-Recruitment-Task-UIUX---Flutter?node-id=0-1&p=f&t=yeiF2kbOydKSciQj-0)

[Copy (Translated by Shaina Pachica (English Text)](https://www.figma.com/design/ovkPzadTBV9aHeOTP9jU6B/Flutter-Practive?node-id=0-1&t=5W8XSTlE0xdkNkeI-1)

## Tech Stack
- **Flutter 3.35.1**
- **Dart 3.9.0**
- **State Management**: GetX
- **Version Control**: Git & Github

## Features Implemented
[x] Separation of View and Controller layers
[x] Reactive UI with Obx and Rx variables
[x] Android native permission handling
[x] Common reusable widgets (buttons, input fields, etc.)
[x] UI screens aligned with the Figma design

## UI Tools and Libraries used
- **Translations for figma** - localization toolbox - for translating the Korean text into English text
- **Figma to Code** - to extract snippets from the design and reduce manual error under time constraints
- **Co-pilot on VS-Code** - Convenient for debugging (asking about coding problems) and get code completions

## Packages
- get: ^4.6.5
    - State Management(GetX)
- permission_handler: ^11.3.0 
    - Handling permisisions
- image_picker: ^1.1.2 
    - Picking images from the gallery or camera
- file_picker: ^6.1.0 
    - Files selection (attachments)

## Architecture
1. **bindings/** - handles dependency injection (registering GetX)
2. **controllers/** - contains all your business logic (brain of the app)
3. **views/** - contains UI screens/pages
4. **widgets/** - store reusable UI pieces (buttons, text fields, cards, etc.)
5. **routes/** - defines the app (myflyn) navigation paths

## Project Structure
```
lib/
│── app/
|   ├── bindings/        # GetX handles dependency injection 
│   ├── controllers/     # GetX controllers (business logic & state)
│   ├── views/           # UI screens
│   ├── widgets/         # Reusable UI components
|   ├── routes/          navigation paths
│── main.dart            # Entry point
```

## Developer's Note
### Personal Documentation
This task was completed within ~22 hours since receiving the email (18 hours of straight coding). Given the time constraints, I prioritized compliance with the requirements (View/Controller separation, GetX state management, Android permission handling, reactive UI, etc.).

If more time were available, I would further enhance the project by:
- Completing all screen connections
- Refactoring and improving file structure
- Enhancing design details (icons, backgrounds, fonts, layouts)
- Adding smooth transitions and animations
- Optimizing performance and usability
I will also be glad to provide a video walkthrough of the code if required.

## Installation & Run Instruction

### OPTION 1 : Run from the Machine
1. Clone the repository
   ```
   git clone <repo-link>
   cd <repo-folder>
   ```
2. Get dependencies
   ```
   flutter pub get
   ```
3. Run the app on an emulator/physical device or Windows/Egde (just open dev tools and change responsiveness)
    ```
    flutter run
    ```

### OPTION 2 : Install APK (v1.0.0) Directly
For quick testing, you can download the latest release APK here:  
[Download APK](https://github.com/shaina-pachica/MyFlyn_App/blob/main/release/app-release.apk))

