---
title:  "Intro to Git"
---

Git is a version control system. It allows you to keep the entire history of your code, and makes it easy to share and collaborate with others.

To use git you need to create a **Git repository**. You can think of a git repository like this:

![Basic git](/assets/basic_git.png)

- A repository contains lots of **commits**. Each commit is essentially a different version of your files.
- Commits can be organised into **branches**. A repository can contain many different branches. Branches are often used to develop new application features - that way the main codebase still works while the feature is being developed, and the new code can be *merged* in when it's working.
- Branches have names, so you can keep track of them. When you first set up a repository, you'll just have one branch and it will have the default name - **master**.

### What does a git repository look like?

On your laptop, a git repository is just a **special type of folder**. Any folder can be made into a git repository (but not all folders should - e.g. don't make your entire documents directory into a git repository, you'll run into problems). You'll normally make a new git repository for each coding project you work on.

If you look inside the folder, you won't see all the different versions stored there (they are actually there - just stored inside a hidden folder called `.git`) - you'll only see the files that are in your **working copy**. Normally this working copy will contain the files from the last commit on the master branch, along with any changes you've made.

### Making a commit

To save some changes into the repository you need to create a commit. When you create a commit you get to write a message, to help remind yourself (and others) what changes you made (and why you made them). Once you've created a commit, you'll be able to come back to this version of your code at any point in the future.

Adding files to a git repository is actually a two-stage process: first you have to **add** them to something called the **index** and then you have to **commit** them. This is useful when you get more advanced, but we'll usually do those things together for the time being.

![Index and working tree](/assets/index_working_tree.png)

{% exercise %}
1. Set up your `first_site` folder as a git repository.
2. **Add** your work to the index.
3. **Commit** your work to the repository, with a message e.g. "Initial import"
4. Make some change to index.html (in Sublime Text)        
5. **Add** your changes to the index.
6. **Commit** them to the repository.
{% endexercise %}


### Git with SourceTree

#### Creating a git repository

1. Open SourceTree
2. Select File > New / Clone
3. Select the 'New' option
4. Navigate to the folder you want to make into a git repository.

#### Adding to the index

1. Select all the files in the working tree section.
2. Click the "Add" button at the top.
3. You should see the files move to the 'Index' section

#### Committing to the repository

1. Once you have files in your 'Index' section, click on 'Commit'.
2. Write a commit message explain what you've done (and maybe why).
3. Click "Commit"

### Git with the command line

#### Creating a git repository

1. Using the command line, navigate to the folder you want to make into a repository.
2. **Inside the target folder** run the command

        git init

3. To check this worked run the command

        git status

#### Adding to the index

1. Inside the folder, run the command

        git add --all

3. To check this worked run the command

        git status

#### Committing to the repository

1. Inside the folder, run the command

        git commit -m "write your message here"

3. To check this worked run the command

        git status

        