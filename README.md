# myflyn_app

A small Flutter project for Task Assignment by SuperCoder Recruitment Process. Implemented a mobile application based on the provided [Figma design]. 

(https://www.figma.com/design/nTWqe0LRliDCpCzzq4Dnch/Developer-Recruitment-Task-UIUX---Flutter?node-id=0-1&p=f&t=yeiF2kbOydKSciQj-0)

## UI Libraries used

- Translations for figma - localization toolbox
    - for translating the Korean texts into English texts
- Figma to Code 
    - for getting the code snippets from the Figma Design. In order for me to maximize the given time, and also to ensure that I minimalize the chance of creating dev user error.
- Co-pilot on VS-Code 
    - Convenient for debugging (asking about coding problems) and get code completions

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

