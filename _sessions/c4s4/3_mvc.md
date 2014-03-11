---
title: Model/View/Controller
---

Model/View/Controller (MVC) is an application architecture that rails is based on. It works as follows:

* The Controller deals with incoming web requests. It manages the interaction between the Models and renders the Views.
* The Models correspond to 'business objects'. The Model layer is responsible for storing/retrieving the information in the database (among other things).
* The Views correspond to pages you send to the user. Views are responsible for displaying the data that the Controller has gathered from the Models on the page.

For a far better expanation please see [this post](http://betterexplained.com/articles/intermediate-rails-understanding-models-views-and-controllers/).

### Controllers

The tasks controller can be found in the file  `app/controllers/tasks_controller.rb`. In that file there are several different methods, for example:

{% highlight ruby %}
# GET /tasks
# GET /tasks.json
def index
  @tasks = Task.all
end
{% endhighlight %}

The comments tell you when this action will run. In the case above, it is when someone makes a `GET` request to `/tasks`. (How requests map to controllers is set up in `config/routes.rb` in this case with the line `resources :tasks`. You can find out more about request routing and `routes.rb` from the [rails routing docs]().) All the `index` action does is to use the `Task` model to pull all the existing tasks out of the database. Just like sinatra it will use the instance variable `@tasks` to share the information with a view. By default the view with the **same name as the action** will be run - in this case `views/tasks/index.html.erb`.

Scaffolding a model with `rails generate scaffold` will create a controller with the following actions:

* `index`: for listing all the tasks.
* `show`: for seeing a single task on its own page.
* `new`: for displaying a form to create a task.
* `create`: for receiving the post request from the 'new' form and storing the new task in the database.
* `edit`: for displaying a form to edit a task.
* `update`: for receiving the post request from the 'edit' form and updating the task in the database.
* `destroy`: for destroying the task and removing it from the database.

These are known as **CRUD** actions, short for 'create', 'read', 'update' and 'destroy', and represent the common actions that are generally performed on models. Rails provides a **RESTful interface** to these actions, by mapping appropriate http requests to the controller through the configuration in `routes.rb`. You can find more out about this in the [rails routing docs]() but, for now, it's not really that important. 

{% exercise %}
1. Read through all the actions in the `tasks_contoller.rb`.
2. One-by-one try them out in your browser (e.g. by clicking on the 'show'/'edit'/'destroy' links on the [localhost:3000/tasks](http://localhost:3000/tasks) page)
{% endexercise %}