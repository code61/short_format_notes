---
title: Homework
---

{% exercise %}
1. Finish off any exercises from class.
2. Do the [Codecademy Ruby track](http://www.codecademy.com/tracks/ruby) Sections 16 and 17. (If you have time, do the inbetween ones too!)
{% endexercise %}

### Further reading

We have only really begun to touch on what you can do with classes in ruby. There are really important concepts in object oriented programming (e.g. inheritance, class methods, class variables, mixins, etc.) that we haven't really mentioned at all. We'll meet some of these things in the next few weeks, but if you want a more comprehensive overview you can take a look at one of the following:

- [http://phrogz.net/programmingruby/tut_classes.html](http://phrogz.net/programmingruby/tut_classes.html)
- [http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/](http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/)

## Getting set up with MongoDB

Next session we will look at storing information in a database. The database we'll be using is [MongoDB](http://www.mongodb.org/).

To use mongodb you need to have it running on your laptop. The database will run on one of your localhost ports (like sinatra), so that other processes can connect to it.

The preparation falls into four parts:

1. Install MongoDB.
2. Start running the database.
3. Install the gems to allow ruby to connect to MongoDB.
4. Test your installation.

We will look at these parts separately.

### Install MongoDB

If you installed `homebrew` ("The Hard Way", Mac only), your task is now easy. At the command line write:

    brew install mongo

If you didn't install homebrew (i.e. try doing the above and it doens't work), you will need to [download MongoDB](http://www.mongodb.org/downloads) from the site and follow the installation instructions for your system.

{% exercise %}
Install MongoDB either via

    $ brew install mongo

or by downloading and installing from the [MongoDB website](http://www.mongodb.org/downloads).
{% endexercise %}

### Start MongoDB running

You can start MongoDB running from the command line:

    $ mongod

You will need to **keep this command line open** and open a new one to continue the instructions.

By default mongo will run on [localhost:28017](http://localhost:28017/). If you visit that link in your browser you should see a mongo stats page.

{% exercise %}
1. Start MongoDB:

        $ mongod

2. Check the service is running at [localhost:28017](http://localhost:28017/).
{% endexercise %}

### Install the gems and test

I've set up a project with the gems you need, so this should be straightforward:

{% exercise %}
1. Clone the project:

        $ git clone https://github.com/code61/mongo_test.git

2. Move into that folder and install the gems:

        $ cd mongo_test
        $ bundle install

3. Test your installation:

        $ ruby main.rb

    If you see the text "Everything worked ok!", you're good to go!
{% endexercise %}