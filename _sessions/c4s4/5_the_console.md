---
title: Rails console
---

Rails provides its own special version of `irb` known as the `rails console`. It's basically irb with your rails project already loaded, so that you can easily interact with the application and the database. You start the console at the command line (in your `project_manager` folder):

    $ rails console

We'll use the console to have a closer look at the `Task` model that was created via the `rails generate scaffold`.

### Models

If you take a look at the file `app/models/task.rb` you'll find the following:

{% highlight ruby %}
class Task < ActiveRecord::Base
end
{% endhighlight %}

The important bit here is the `< ActiveRecord::Base`, which is saying that the class *inherits* from `ActiveRecord::Base`. `ActiveRecord` is a ruby library that allows you to access SQL, or relational, databases from ruby (whereas `mongoid` was for accessing the NoSQL, or document-based, database MongoDB). You'll note that, unlike `mongoid` we don't specify which fields the `Task` model has - `ActiveRecord` takes this information automatically from the database. `ActiveRecord` is similar to `mongoid` in terms to how you pull things out of the database:

{% highlight ruby %}
Task.all     # to find all the tasks

# create a new task (not yet in the database)
t = Task.new(:name => "Washing up", :due_date => '14/8/2013', :project => 'Housework')

# save the task to the database
t.save

# pull a task out of the database
t2 = Task.first

# update an attribute
t2.completed = true

# save the update to the database
t2.save
{% endhighlight %}

### Adding logic to the model

A useful question to be able to ask a `Task` would be whether it is overdue yet. It is easy to add this logic to the model in `app/models/task.rb`:

{% highlight ruby %}
class Task < ActiveRecord::Base

  def overdue?
    due_date < Date.today && !completed?
  end

end
{% endhighlight %}

You can try this out in the rails console (but you need to reload the class to pick up the changes):

    > reload!
    > t = Task.last
    > t.overdue?

{% exercise %}
1. Open up `irb` and try working through the set of operations above to experiment with creating a new `Task` and saving it to the database via the rails console.
2. Add the `overdue?` method to the `Task` model. Check you use the new method in `irb`.
{% endexercise %}