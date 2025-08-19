# myflyn_app

A small Flutter project for Task Assignment by SuperCoder Recruitment Process. Implemented a mobile application based on the provided Figma design. 

(c) Supercoder
(https://www.figma.com/design/nTWqe0LRliDCpCzzq4Dnch/Developer-Recruitment-Task-UIUX---Flutter?node-id=0-1&p=f&t=yeiF2kbOydKSciQj-0)

(c) MyCopy (Translated)
https://www.figma.com/design/ovkPzadTBV9aHeOTP9jU6B/Flutter-Practive?node-id=0-1&t=5W8XSTlE0xdkNkeI-1

## UI Libraries used

- Translations for figma - localization toolbox
    - for translating the Korean texts into English texts
- Figma to Code 
    - for getting the code snippets from the Figma Design. In order for me to maximize the given time, and also to ensure that I minimalize the chance of creating dev user error.
- Co-pilot on VS-Code 
    - Convenient for debugging (asking about coding problems) and get code completions

## Packages

- get: ^4.6.5
    - state management package (GetX)
- permission_handler: ^11.3.0 
    - package for handling permissions
- image_picker: ^1.1.2 
    - package for picking images from the gallery or camera
- file_picker: ^6.1.0 
    - package for picking files (attachments)

## Architecture
1. bindings/
    - handles dependency injection (registering GetX)
2. controllers/
    - contains all your business logic (brain of the app)
3. views/
    - contains UI screens/pages
4. widgets/
    - store reusable UI pieces (buttons, text fields, cards, etc.)
5. routes/
    - defines the app (myflyn) navigation paths

==

## Developer's Note
### Personal Documentation
Task is done as per the instructions needed. 22hrs since receiving the email (18hrs straight coding). Given the time constraints, this is what I am able to create by far. 

If given the time or if I desire to finish and implement the whole UI/UX and its potential features, I would gladly do the following:
    - Fix screen connections
    - Refactor the code further
    - Create a better file structure (architecture)
    - Improve the design (icon, background, fonts, placings)
    - Incorporate user-friendly transitions
    - (... to be continued)
    
