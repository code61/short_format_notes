---
title: Sinatra static assets
---

Last week we linked Twitter Bootstrap into your view templates, by linking to the online hosted version `<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">`. What if we want to link to our own files?

When we were building static sites, this was simple: we just created a `main.css` file in our site folder, and linked to it. The problem is that **a sinatra site folder is not like a static site folder**. We've already seen this: `app.rb` controls the url structure, not the folders in the app folder. (Just try going to '/app.rb' or '/views/index.erb'). Because of this, just dropping a `main.css` into the sinatra folder and trying to link to it won't work.

Thankfully sinatra has a solution to this problem: if you create a folder called `public`, any files you put in there will be available from the root url. For example, if I have a file `public/main.css`, I can then link to this from my template files using `<link rel="stylesheet" href="/main.css">`. The two important things to note here are:

1. I'm using a root-relative link (starting with a `/`). If you don't do this, you'll have problems if you ever call that template from a different url route.
2. I'm linking directly to `main.css`, **not** to `public/main.css`.

<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Sinatra conventions</h3>
  </div>
  <div class='panel-body'>
   <ol>
      <li>Files inside the <code>public</code> folder will be served at the root of the site. This is where you should put your own stylesheets/images etc.</li>
      <li>You call a template with the line <code>erb :template_name</code>.</li>
      <li>For this to work, you will need a template called <code>template_name.erb</code> in the <code>views</code> folder.</li>
      <li>Instance variables (ones that start with <code>@</code>) will be shared with the template.</li>
      <li>You use these shared instance variables in the template by putting them inside an erb tag: <code>&lt;%= @my_variable &gt;</code> </li>
    </ol> 
  </div>
</div>

{% exercise %}
1. Link the bootstrap stylesheet you'll find in `public/dist/css/bootstrap.css` into the `head` of `todo.erb` and `schedule.erb`.
{% endexercise %}