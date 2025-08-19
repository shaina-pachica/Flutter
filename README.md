# myflyn_app
A small Flutter project for Task Assignment by SuperCoder Recruitment Process. Implemented a mobile application based on the provided Figma design. 

(c) Supercoder
(https://www.figma.com/design/nTWqe0LRliDCpCzzq4Dnch/Developer-Recruitment-Task-UIUX---Flutter?node-id=0-1&p=f&t=yeiF2kbOydKSciQj-0)

(c) MyCopy (Translated)
https://www.figma.com/design/ovkPzadTBV9aHeOTP9jU6B/Flutter-Practive?node-id=0-1&t=5W8XSTlE0xdkNkeI-1

===

## UI Tools and Libraries used

- **Translations for figma** - localization toolbox - for translating the Korean text into English text
- **Figma to Code** - to extract snippets from the design and reduce manual error under time constraints
- **Co-pilot on VS-Code** - Convenient for debugging (asking about coding problems) and get code completions

=== 

## Packages
- get: ^4.6.5
    - State Management(GetX)
- permission_handler: ^11.3.0 
    - Handling permisisions
- image_picker: ^1.1.2 
    - Picking images from the gallery or camera
- file_picker: ^6.1.0 
    - Files selection (attachments)

=== 

## Architecture
1. **bindings/** - handles dependency injection (registering GetX)
2. **controllers/** - contains all your business logic (brain of the app)
3. **views/** - contains UI screens/pages
4. **widgets/** - store reusable UI pieces (buttons, text fields, cards, etc.)
5. **routes/** - defines the app (myflyn) navigation paths

===

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

===
