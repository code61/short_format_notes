---
title: Views
---

Your app's views can be found in `app/views`. You'll notice that there are view files for most of the controller actions (all the ones that need them):

    - app
      + assets
      + controllers
      + helpers
      + mailers
      + models
      - views
        + layouts
        + tasks
          - _form.html.erb
          - edit.html.erb
          - show.html.erb
          - new.html.erb
          - index.html.erb

(There are also some `.json.jbundle` files. These are new in Rails 4.0. I think they're for making your app accessible as a json api.) The `_form.html.erb` is a *partial* - a view that is shared by other views, which is why it begins with an underscore. `_form.html.erb` is used in both the `edit.html.erb` and `new.html.erb` views.

### Layouts

Just like Sinatra, Rails allows you to use layout templates to reduce the amount of repetition in your `erb` files. Rails has even gone so far as to set one up for you. You can have a look at the layout in `app/views/layouts/application.html.erb`.

`app/views/layouts/application.html.erb` will be used by default by all the views in your application. It is possible to create other layout files (e.g. `admin.html.erb`) to use with certain views. You can find out more about doing this [here](http://stackoverflow.com/questions/14356207/not-rendering-the-default-application-layout-in-rails-3).

I'm going to add [Twitter Bootstrap]() to the rails app by linking the online version of the css to the top of `application.html.erb`:

{% highlight html %}
<!DOCTYPE html>
<html>
<head>
  <title>ProjectManager</title>

  !-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css">

  <%= stylesheet_link_tag    "application", media: "all", "data-turbolinks-track" => true %>
  <%= javascript_include_tag "application", "data-turbolinks-track" => true %>
  <%= csrf_meta_tags %>
</head>
<body>

<%= yield %>

</body>
</html>
{% endhighlight %}

### Where to put CSS and Images

In Sinatra you had to put CSS and images in the `public` folder. Rails has a different way of dealing with these things: you need to put them in `app/assets/..`. This is to allow Rails to use [sass](http://sass-lang.com/): a special language that makes css easier to write and manage. You might want to investigate sass in the future, for now the important thing is that **writing css in a sass file is fine** - the css will be unchanged and behave as normal.

Let's write some custom CSS in `app/assets/css/application.css.scss`:

{% highlight css %}
/*
 * This is a manifest file that'll be compiled into application.css, which will include all the files
 * listed below.
 *
 * Any CSS and SCSS file within this directory, lib/assets/stylesheets, vendor/assets/stylesheets,
 * or vendor/assets/stylesheets of plugins, if any, can be referenced here using a relative path.
 *
 * You're free to add application-wide styles to this file and they'll appear at the top of the
 * compiled file, but it's generally better to create a new file per style scope.
 *
 *= require_self
 *= require_tree .
 */

h1 {color: red;}
{% endhighlight %}


{% exercise %}
1. Have a look through all the views in `app/views/tasks`. See if you can work out roughly what they do.
2. Add Twitter Bootstrap to your site (by editing `app/views/layouts/application.html.erb` as above).
3. See if you can change the `index.html.erb` view so that the table is a [Twitter Bootstrap striped table](http://getbootstrap.com/css/#tables-striped).
4. See if you can add a [Twitter Bootstrap navbar](http://getbootstrap.com/components/#navbar) to your site (in `layouts/application.html.erb`).
5. Change the colour of the navbar, by adding some custom css to `app/assets/css/application.css.scss`.
{% endexercise %}