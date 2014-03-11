---
title: Intro to Rails
---

Rails is a web framework written in ruby. It is similar to Sinatra, except it does a lot more for you. Rails is great as it makes it possible to build serious web applications while you continue to learn about web development.

A lot of your time as a new rails programmer will be spent figuring out how all the pieces fit together. It can seem daunting at first, however there are a huge number of excellent blog posts/tutorials/videos out there which will make your task much easier. In this session we will go through the steps involved setting up a new rails application and spend a bit of time looking around the application that is created.

In this session we will be creating a Rails 4.0 application. Rails 4.0 is the latest version of rails and was released a few months ago. When looking at advice on the internet it's important to be aware that some things have changed since Rails 3, and so some things may no longer apply. 

One of the nice things about rails is it does a lot of work for you. We'll start by creating a new rails project using the `rails new` command:

    $ rails new project_manager

This command has created a new folder called `project_manager` and filled it with the files for a basic rails application. As part of this it will have created a `Gemfile` to manage the dependencies and as the last step will run `bundle install` to download them all. 

Let's have a quick look in this new folder:

    $ cd project_manager
    $ ls -a
    .gitignore
    Gemfile
    Gemfile.lock
    README.rdoc
    Rakefile
    app
    bin
    config
    config.ru
    db
    lib
    log
    public
    test
    tmp
    vendor

You'll notice a couple of files that you recognise from sinatra: `Gemfile`, `Gemfile.lock` and `config.ru`. Rails has also created a `.gitignore` file for you so that files that shouldn't be placed in version control aren't.

Rails has also created a load of folders for you, mostly with other files and folders inside. We won't worry about all of these at the moment, but will come back to them later on.

We can run this skeleton application by starting the rails server (similar to `ruby app.rb` in Sinatra). To do this type

    $ rails server

This will probably start rails running at [localhost:3000](http://localhost:3000). When you visit that link you'll find a default rails page telling you some information about your new application.

### Generating a model

Models are the 'the things our system is about'. For our project manager application, one of the models we will be working with will be the `task` model. A user will create tasks, others will be able to see the tasks and then mark them as created when they're done. We will create the files for the task by generating a scaffold:

    $ rails generate scaffold task name:string due_date:date description:text project:string completed:boolean

`rails generate scaffold` tells rails to set up everything to do with the `task` model that we're creating (more on this later). The name of the thing that you're creating (`task` in this case) should always be **singular**. The final part of the command `name:string due_date:date description:text` tells rails what attributes the model should have and what type they are. The possibilities for the types are:

    :primary_key, :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean

an up-to-date list of which can be found in the [rails docs](http://api.rubyonrails.org/classes/ActiveRecord/ConnectionAdapters/TableDefinition.html#method-i-column).

Among other things the `generate scaffold` command will have set up a *database migration* to set up the database table for tasks. As a final step we need to create that tale in the database:

    $ rake db:migrate

Once you have **restarted the server** you should now be able to visit [localhost:3000/tasks](http://localhost:3000/tasks) in the browser and create a task.


{% exercise %}
0. Before you start check that you're running rails 4.0:

        $ rails -v
        Rails 4.0.0

1. In your `coding_course` folder set up a new rails application:

        $ rails new project_manager

2. Move into the `project_manager` folder and set it up as a git repository:

        $ cd project_manager
        $ git init
        $ git add --all
        $ git commit -m "Initial import"

3. Generate scaffolding for a `task` model:

        $ rails generate scaffold task name:string due_date:date description:text project:string completed:boolean

4. Migrate the database:

        $ rake db:migrate

5. Restart the server and check you can add tasks at [localhost:3000/tasks](http://localhost:3000/tasks).
6. Add everything to git:

        $ git add --all
        $ git commit -m "Created tasks."

7. Have a look in `app/controllers` and `app/views/tasks` and see if you can figure out what is going on.
{% endexercise %}