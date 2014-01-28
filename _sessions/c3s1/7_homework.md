---
title: Homework
---

{% exercise %}
1. Finish the exercises from class.
2. Do the [Codecademy Ruby track](http://www.codecademy.com/tracks/ruby) Sections 1 and 2.
3. Get a [Heroku](https://www.heroku.com/) account and upload an ssh key (see below).
{% endexercise %}

### About Heroku

[Heroku](https://www.heroku.com/) is a cloud-based web hosting solution, specifically designed for hosting web applications. It started out as a Rails host, but has since branched out into other frameworks (e.g. Sinatra, Node.js) and languages (e.g. Java, Python).

They aim to completely manage your apps online infrastructure: you provide them with the code, they set it up and run it online. If you have a lot of users and want to scale your app up, they make it easy to allocate more resources so you can handle the increased traffic (for a price!). 

### Setting up an account

Before you deploy your app to heroku you need to create an account.

{% exercise %}
1. Sign up for an account at [Heroku](https://www.heroku.com/).
2. After you log in, download and install the heroku toolbelt. (This will allow you to interact with heroku from the command line).
{% endexercise %}

### Setting up ssh with heroku

The final part of the set up is to upload your ssh keys to Heroku. You might remember about ssh keys from the initial installation instructions: they're basically a way of identifying yourself to a server without typing in your password each time.

The heroku toolbelt makes this very easy. On the command line (in any folder) type:

    $ heroku keys:add

You can check it worked by typing:

    $ heroku keys

It should list the ssh key that you just added.

{% exercise %}
Upload your ssh key to heroku by running

    $ heroku keys:add

{% endexercise %}