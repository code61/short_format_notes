---
title: Putting it all together
---

We're now going to return to the sinatra app and use classes to refactor the app again.

{% exercise %}
1. Gather up all the data and methods to do with people into a `Person` class:
    - Copy your `Person` class from the exercise into `sinatra_c4s2/person.rb`.
    - Uncomment the `require './person'` at the top of `app.rb`.
    - Rewrite the person code in the `post` block to use your class.
    - Change `views/tickets.erb` to call method on the objects you pass through.
    - Check the app still works as before!
2. Gather up all the event-related code into a new `Event` class:
    - Write the necessary code in `event.rb`.
    - Uncomment the `require './event'` at the top of `app.rb`.
    - Rewrite the event code in the `post` block.
    - Change the views to use the objects.
    - Check the app works as before.
{% endexercise %}
