---
title: "Ruby & Git: Easy Way"
---

In this step we will be installing git, Ruby and Ruby on Rails. You've already come accross git. Ruby is a programming language that we will be learning in the second part of the course. Ruby on Rails is a framework for building web applications quickly and easily, built using Ruby.

It's important to realise that git, Ruby and Ruby on Rails are not 'programs' in the sense that you are probably used to. **There won't be any icons for ruby, git or Ruby on Rails**. They're the sort of programs you run from the command line, rather than applications that you click on.

{% exercise %}
Go to [http://railsinstaller.org/](http://railsinstaller.org/) and follow the instructions for your operating system (choosing all the defaults they give). You want the **Ruby 1.9** version.
{% endexercise %}

### Windows notes:

At the final stage, there will be a tick box asking if you want to "Configure git and ssh". Make sure this box is ticked. Follow the instructions and fill in your name and email (this is only used for your git commits).

It will also tell you something about having copied your ssh key to the clipboard. This might or might not be true. In any case, don't worry as we're moving on to this next.

### Mac notes:

You will need to know which version of OS X you are running: 10.8 (Mountain Lion), 10.7 (Lion), or 10.6 (Snow Leopard). To check this click on the apple symbol in the top left of your screen and select 'About This Mac'.


### Did it work?

{% exercise %}

You should now have installed git and ruby on your laptop. Check it worked with the following steps:

1. Open your command line:
    * On a Mac open Terminal (Applications > Terminal)
    * On Windowns open 'Command Prompt with Ruby on Rails' (this should have been installed by rails installer)
2. Type

        git --version

    It should look something like this

        $ git --version
        git version 1.8.4
        $ 

    If it doesn't print out your git version you have a problem - ask in the forum!

3. Type

        ruby --version

    It should look something like this

        $ ruby --version
        ruby 1.9.3p448 (2013-06-27 revision 41675) [x86_64-darwin12.4.1]
        $

    If it doesn't print out your ruby version you have a problem - ask in the forum!
{% endexercise %}