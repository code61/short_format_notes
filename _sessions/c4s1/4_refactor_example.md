---
title: Refactoring
---

**Refactoring** is the act of restructuring a piece of code **without changing its behaviour**. Refactoring is very important in software development, as without it software projects quickly become unweildy and difficulat to work with.

You're going to refactor the sinatra app, by completing the functions in the `helper_functions.rb` file.

{% exercise %}
1. Open `app.rb` in Sublime Text.
2. Uncomment the commented out `post` block at the bottom, and comment out the other one. This is how we want the code to look, but currently the functions aren't there to make this work.
3. Uncomment the line `require './helper_functions'` at the top of `app.rb`
3. Open the file `helper_functions.rb` in Sublime Text. Complete the functions so that the app works as before.
{% endexercise %}