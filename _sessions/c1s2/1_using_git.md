---
title:  "Intro to Git"
---

![Basic git](/assets/basic_git.png)

Git is a version control system. It allows you to keep the entire history of your code, and makes it easy to share and collaborate with others.

### Setting up a git repo

Git works on a folder level. To set up a folder to work with git you need to open up the github app and select `File > Add Local Repository ...`. You then need to select the folder you want to control with git.

### Excluding some files

There are some other hidden files (e.g. those used by your operating system) that you don't want to be version controlled. An example of these is the `.DS_Store` file on macs. We'll talk more about this later - for now we'll just quickly exclude them from our repository.

To do this you need to change the settings on your repository.

1. Open the settings tab of your repository.
2. Add `.DS_Store` on the first line of the 'Ignored files' section, and press 'Save Changes'.

If you're on Windows you don't need to worry about this.

### Committing files to the repository

Suppose we've now created a file called `index.html` in the folder. It's in the folder but currently isn't being tracked by git. 

Adding files to a git repository is actually a two-stage process: you have to **add** them and then **commit** them. This is useful when you get more advanced, but we'll usually do those things together for the time being. 


{% exercise %}
1. Set up your `first_site` folder as a git repository: open up the github app, select `File > Add Local Repository ...` and select the `first_site` folder.
2. **If you are on a mac**, tell git to ignore your `.DS_Store` files: in the settings panel of the github app, add the line `.DS_Store` in the 'Ignored files' section.
3. Commit your work to the repository: in the 'Changes' panel, click 'Select all', write a 'Commit Summary' in the box (e.g. "Created index.html") and click 'Commit'.
6. Make some change to index.html (in Sublime Text)        
7. Go back to the 'Changes' panel. Select and commit your changes, with a 'Commit Summary' describing what you did.
{% endexercise %}