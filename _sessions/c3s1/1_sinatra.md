---
title: Introducing sinatra
---

Sinatra is a lightweight web framework written in ruby.

### Getting sinatra

You can install sinatra on your laptop using [rubygems](http://rubygems.org/) - ruby's excellent package manager. When people write their own ruby libraries, they usually release them as a gem, so that others can quickly and easily install them. Sinatra is one of these libraries. To install it do:

    $ gem install sinatra

at the command line.

{% exercise %}
1. Install sinatra: at the command line run

        $ gem install sinatra

2. Download the code for the session:

        $ git clone https://github.com/code61/sinatra1.git


{% endexercise %}
We're now going to look at how to create a very simple web application using sinatra.

{% highlight ruby %}
# in app.rb:

require 'sinatra'

get '/' do
    "hello"
end
{% endhighlight %}

This file is very simple. The first line imports the `sinatra` library. The next bit tells sinatra how to respond to a certain type of request. In particular it says that if it receives a `GET` request to the root url it should send back the text "hello".

To run this app first `cd` into the `app1` directory and then ruby the `app.rb` file.

    $ cd app1
    $ ruby app.rb
    == Sinatra/1.3.3 has taken the stage on 4567 for development with backup from Thin
    >> Thin web server (v1.3.1 codename Triple Espresso)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:4567, CTRL+C to stop

Sinatra has started a webserver on your computer, which you can view in your browser. It will be displayed at the IP address `0.0.0.0` on port `4567`. `0.0.0.0` always points to the machine you are currently using. Another way of saying this is to use the word `localhost`. You will be able to view the site by typing one of the following into your browser address bar:

* `0.0.0.0:4567`
* `localhost:4567`

{% exercise %}
1. Run the app. In the `app1` directory:

        $ ruby app.rb

     Check you can see the page in your webbrowser at [localhost:4567](http://localhost:4567).
2. Make a change to `app1/app.rb` so that it instead says "Hello there!". Check you can see the change in your browser (you will have to stop the server with `Crtl-C` then restart it again with `ruby app.rb`).
3. Test your solution by running

        $ ruby test1.rb

4. Try visiting a different url (e.g. [localhost:4567/about](http://localhost:4567/about)). What happens?
{% endexercise %}