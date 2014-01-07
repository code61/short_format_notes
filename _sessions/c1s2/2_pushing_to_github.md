---
title: Pushing code to Github
---


Github is a site which will host a git repo online for you, making it easy to collaborate with others. We'll now see how to put some code online.

Go to github, login, and click "Create New Repo" in the top left hand corner.

![Creating a repo on GitHub](/assets/create_repo.png)

Follow the instructions, calling it something like `first_site`. **Do not** click the box which says 'Create a readme with this repository'. You'll get to a page when it'll describe how to get your code online. You want to follow the instructions for "Pushing an existing repository to github".

![Push repo to GitHub](/assets/push_repo_github.png)

If you've set up ssh keys, go for the ssh option, if not, go for https. You should end up doing something like:

    $ git remote add origin git@github.com/yourusername/first_site.git
    $ git push -u origin master

You might now be prompted to add your github username and password (if you're doing the https method). If all goes well, when you go to github you should see the `first_site` folder containing your html file.

{% exercise %}
Push your `first_site` folder to GitHub!

1. Create the new repository on GitHub. (**Don't** create it with a README.)
2. Follow the instructions for "Pushing an existing repository to github" to push your repository up.
{% endexercise %}