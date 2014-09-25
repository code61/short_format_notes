---
title: "Pushing to GitHub"
---

Git is a version control system. It allows you to keep the entire history of your code, and makes it easy to share and collaborate with others.

### Using git

Using git is really easy:

1. Set up a folder to be a _git repo_. This tells git to track all changes in that folder.
2. After you've made some changes, save them into the repository.
3. Once you've saved the changes push them up to github.

The first point is important: *git works on a folder level*. It tracks all the changes you make to files within a given folder.

### Actually using git

Actually using git is a bit harder. It's a very powerful tool and pretty complex to get started with. To make things simpler, we're going to use a tool called `gitgit`.

To install gitgit open the command line and type the following:

    gem install gitgit

To see if this worked, type

    gitgit

You should see a list of gitgit commands something like this:

    $ gitgit
    Commands:
      gitgit help [COMMAND]  # Describe available commands or one specific command
      gitgit init            # Initialise a git repo
      gitgit lg              # Show your recent saves
      gitgit push            # Push your changes to github
      gitgit save            # Save you changes to the repo
      gitgit status          # See what changes you've made since you last save

If it didn't work, you might need to do

    sudo gem install gitgit

and type your password.

You also might need to do

    rbenv rehash

If in doubt contact a teaching assistant!

### Using gitgit

To **make a folder into a git repository**:

    gitgit init

then follow the instructions. You'll only need to do this once for each folder you want to make into a repository.

After you've made some changes to your files and saved them, you can **save them into your repo** by typing:

    gitgit save

Finally, to push your code up to github you can do

    gitgit push

Before you do this, you will need to setup your repo with github.

### Setting up your repo with github

Go to github, login, and click "Create New Repo" in the top left hand corner.

![Creating a repo on GitHub](/assets/create_repo.png)

Follow the instructions, calling it something like `first_site`. **Do not** click the box which says 'Create a readme with this repository'. You'll get to a page when it'll describe how to get your code online. You want to follow the instructions for "Pushing an existing repository to github".

### Pushing your code to github

We will now set up your `first_site` folder to use git and push it up to github.

{% exercise %}
<ol>
<li>Navigate to your first_site folder using cd and ls.</li>
<li>Make it into a git repo: "gitgit init"</li>
<li>Save all the work you've done so far: "gitgit save"</li>
<li>Log in to GitHub.</li>
<li>On github create a new repository called 'first_site'. DO NOT click the box which says 'Create a readme'.</li>
<li>Copy and paste the instructions it gives you into the command line. You are 'Pushing an existing repository to github'.</li>
<li>Go back to github and refresh the page. You should see your code.</li>
</ol>
{% endexercise %}
