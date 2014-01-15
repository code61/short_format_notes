---
title: Introducing sinatra
---

Sinatra is a lightweight web framework written in ruby.

### Getting sinatra

You can install sinatra on your laptop using [rubygems](http://rubygems.org/) - ruby's excellent package manager. When people write their own ruby libraries, they usually release them as a gem, so that others can quickly and easily install them. Sinatra is one of these libraries. To install it do:

    $ gem install sinatra

at the command line. We will also need a few other rubygems, so install these too:

    $ gem install rake rake-test

If you used `rbenv` to install ruby, you will need to run the following command:

    $ rbenv rehash 

(If you can't remember if you're using `rbenv`, try the command anyway!)

{% exercise %}
1. Install sinatra: at the command line run

        $ gem install sinatra
        $ gem install rake rake-test

2. If you're using `rbenv` (or can't remember whether you are or not) run the following:

        $ rbenv rehash

2. Download the code for the session:

        $ git clone https://github.com/code61/sinatra_c3s1.git


{% endexercise %}

## A simple ruby application

So far, we've only used ruby in `irb`. If we're going to write ruby applications, we need to go beyond this. In this section, we're going to have some code written in a file (a `.rb` file) and we're going to run the whole file through the interpreter, using the `ruby` command.

We're now going to look at a very simple ruby web application that uses sinatra.

{% highlight ruby %}
# in app.rb:

require 'sinatra'

get '/' do
    "hello"
end
{% endhighlight %}

This file is very simple. The first line imports the `sinatra` library - this is what does most of the work here. The next bit tells sinatra how to respond to a certain type of request. In particular it says that if it receives a `GET` request to the root url it should send back the text "hello".

To run this app you need to run the `app.rb` file using ruby.

    $ cd sinatra_c3s1
    $ ruby app.rb
    == Sinatra/1.3.3 has taken the stage on 4567 for development with backup from Thin
    >> Thin web server (v1.3.1 codename Triple Espresso)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:4567, CTRL+C to stop

Sinatra has started a webserver on your computer, which you can view in your browser. It will be displayed at the IP address `0.0.0.0` on port `4567`. `0.0.0.0` always points to the machine you are currently using. Another way of saying this is to use the word `localhost`. You will be able to view the site by typing one of the following into your browser address bar:

* `0.0.0.0:4567`
* `localhost:4567`

## Changing the app

What just happened involved quite a lot of magic. Because of the line `require sinatra`, when you ran the file through ruby, the following happened:

1. Sinatra started a webserver on your computer.
2. It used the code in your file to tell the webserver how to respond to a certain type of request.
3. The webserver sat on your computer, waiting for you to send it a request from your browser.

Right now, you don't really need to understand how all this works. You just need to be able to understand the general overview and how to change certain bits.

We're now going to change part of the app, so that the webserver says something different.

There are two steps to this:

1. Make a change in `app.rb`.
2. Restart the server, so it knows about the change you made. To do this, you need to first kill the server, using `Ctrl-c` in the terminal, and then restart it using `ruby app.rb`.

{% exercise %}
1. Run the app. In the `sinatra_c3s1` directory:

        $ ruby app.rb

     Check you can see the page in your webbrowser at [localhost:4567](http://localhost:4567).
2. Make a change to `app.rb` so that it instead says "Hello there!". Check you can see the change in your browser (you will have to stop the server with `Crtl-C` then restart it again with `ruby app.rb`).
3. Try visiting a different url (e.g. [localhost:4567/about](http://localhost:4567/about)). What happens?
4. (Extension for those who finish early.) Have a look in the file `test1.rb`. What do you think the `test_default` at the end of the file does? Try running the test file from the command line:

        $ ruby test1.rb

    If the test passes, change the code back to see what happens when it fails. If it fails, try and make it pass!

{% endexercise %}