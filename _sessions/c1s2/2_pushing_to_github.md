---
title: Pushing code to Github
---

Github is a site which will host a git repo online for you, making it easy to collaborate with others. We'll now see how to put some code online.

### Aside: serving a site via Github Pages

Normally when we push code up to github, it just sits there for others to see and contribute to. The code we're about to push up happens to be the code for a website. Instead of the files just sitting there, we want github to *serve* them as a website. The way github does this is through its [github pages](http://pages.github.com/).

There are several ways of getting GitHub to publish your site as a GitHub page. We're going to use a simple trick: in the branches panel of the GitHub app, change the name of the current branch from `master` to `gh-pages`.

<div class="alert alert-warning">If you haven't verified your email with github (you'll see a warning at the top of the screen when you log in). Your GitHub won't serve your page at all. Make sure you've verified you email address, before continuing!</div>

### Pushing code up to github

Go to github, login, and click "Create New Repo" in the top left hand corner.

![Creating a repo on GitHub](/assets/create_repo.png)

Follow the instructions, calling it something like `first_site`. **Do not** click the box which says 'Create a readme with this repository'. You'll get to a page when it'll describe how to get your code online. You want to follow the instructions for "Pushing an existing repository to github".


{% exercise %}
1. Log in to GitHub and check you've verified your email address.
2. Change the name of your master branch to 'gh-pages'.
3. On github create a new repository called 'first_site'.
4. Push your code up to github.
3. On Github check you can see your `first_site` code.
4. On the code page on github, click on Settings. It should tell you (about half way down) the url where they've published your site. Have a look to see whether you can see it!
5. (If you finish early) Make a change to `index.html` in Sublime Text. Add and commit the change to the repository and then push it to GitHub. Make sure you can see the change in the code on GitHub and also in the published page.
{% endexercise %}

### Git with source tree

#### Change the branch name to 'gh-pages'

1. Go to the branches section on the right hand side.
2. Right-click on the name and select 'rename'.

#### Pushing to github for the first time

1. In the 'Repository' menu, click 'Add remote'.
2. Copy the git url (from the bottom right) on github, and copy it into the source tree 'URL/path' box.

#### Pushing for a second time

### Git with the command line

#### Change the branch name to 'gh-pages'

1. Using the command line, navigate to the repository folder.
2. Run the command:

        git branch -m gh-pages

3. To check this worked, run the command:

        git branch -a

#### Pushing to github for the first time

We're assiming here that you've just created your repository and are on the github new repository screen.

![Push repo to GitHub](/assets/push_repo_github.png)

If you've set up ssh keys, go for the ssh option, if not, go for https. You should end up doing something like:

    $ git remote add origin git@github.com/yourusername/first_site.git
    $ git push -u origin master

You might now be prompted to add your github username and password (if you're doing the https method). If all goes well, when you go to github you should see the `first_site` folder containing your html file.

#### Pushing to github for a second time

1. In the repository folder, run the command

        git push