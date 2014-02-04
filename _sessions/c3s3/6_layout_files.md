---
title: Sinatra layouts
---

One of the most important principles in software engineering is to stay [DRY](http://en.wikipedia.org/wiki/Don't_repeat_yourself): **don't repeat yourself**.

The basic idea is that you don't want to be copying and pasting the same code into multiple places. If you're doing this, you're making a lot of work for yourself should you ever decide to change that code.

One way of staying DRY that we'll meet soon is writing functions: if there's a task that you do repeatedly, write a function to put the logic for that task in one place and then call the function when you need to do the task.

Another way, that we'll be looking at today, is in the form of layouts.

### The Problem

In the exercise today, you've been using a lot of erb view templates. You have 4 different templates, which all share the same basic outline:

{% highlight html %}
<!-- in views/index.erb -->
<!DOCTYPE html>
<html>
<head>
  <title>Event Manager 2.0</title>
</head>
<body>

  <h1>Picture Unveiling Evening - Event Managment</h1>

  <ul>
    <li><a href='/todos'>Todo list</a></li>
    <li><a href='/schedule'>Event schedule</a></li>
    <li><a href='/rsvps'>RSVPs</a></li>
  </ul>

</body>
</html>
{% endhighlight %}

{% highlight html %}
<!-- in views/todo.erb -->
<!DOCTYPE html>
<html>
<head>
  <title>Event Manager 2.0</title>
</head>
<body>
  <h1>Todo list</h1>

  <ul>
    <% @todos.each do |todo| %>
      <li><%= todo %></li>
    <% end %>
  </ul>

</body>
</html>
{% endhighlight %}

These files are almost the same - a lot of copy and paste has gone on.

### The solution

Sinatra gets round this problem by allowing you to have a `layout.erb` file in your `views` folder:

{% highlight html %}
<!-- views/layout.erb -->
<!DOCTYPE html>
<html>
<head>
  <title>Event Manager 2.0</title>
</head>
<body>

  <%= yield %>

</body>
</html>
{% endhighlight %}

You can then write only the bits that change in the other two views:

{% highlight html %}
<!-- in views/index.erb -->
<h1>Picture Unveiling Evening - Event Managment</h1>

<ul>
  <li><a href='/todos'>Todo list</a></li>
  <li><a href='/schedule'>Event schedule</a></li>
  <li><a href='/rsvps'>RSVPs</a></li>
</ul>
{% endhighlight %}

{% highlight html %}
<!-- in views/todo.erb -->
<h1>Todo list</h1>

<ul>
  <% @todos.each do |todo| %>
    <li><%= todo %></li>
  <% end %>
</ul>
{% endhighlight %}

Sinatra knows that if you have a file called `layout.erb` it should use that as a layout. If you call `erb :index`:

* It takes the `layout.erb` file.
* It finds the bit where it says `<%= yield %>`.
* It inserts `index.erb` at that point.

You can find more about Sinatra layouts on [the internet](http://lmgtfy.com/?q=sinatra+layouts).


<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Sinatra conventions</h3>
  </div>
  <div class='panel-body'>
   <ol>
      <li>If you have a file <code>views/layout.erb</code> Sinatra will treat it as a layout file: whenever it renders another template, it will try and insert the output into the <code>&lt;%= yield %&gt;</code> part of the layout file.</li>
      <li>Files inside the <code>public</code> folder will be served at the root of the site. This is where you should put your own stylesheets/images etc.</li>
      <li>You call a template with the line <code>erb :template_name</code>.</li>
      <li>For this to work, you will need a template called <code>template_name.erb</code> in the <code>views</code> folder.</li>
      <li>Instance variables (ones that start with <code>@</code>) will be shared with the template.</li>
      <li>You use these shared instance variables in the template by putting them inside an erb tag: <code>&lt;%= @my_variable %&gt;</code> </li>
    </ol> 
  </div>
</div>

{% exercise %}
*Refactor* your views:

1. Create a layout file, containing the shared material from each view.
2. Remove the shared material from each view.
3. Check that the screens still look the same!
{% endexercise %}