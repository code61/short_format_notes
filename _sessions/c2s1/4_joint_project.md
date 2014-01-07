---
title: Joint project
---

The purpose of this project is to create a shared html page to serve as a 'cheat sheet' for all the different commands you've learnt in the course so far (e.g. `ls`, `git add --all` etc.). You will need to be in groups of three. 

{% exercise %}
1. Person A should set up a new project on their laptop:
	1. Create a new folder called `group_cheatsheet` in your `coding_course` folder
	2. Create a file in that folder called `index.html` with some simple html in it.
2. Person A should then set it up as a git repository
	
		$ cd group_cheatsheet
		$ git init
		$ git add --all
		$ git commit -m "Initial import"

3. Person A creates a new repo on github. To do this you need to log in at [github.com](http://github.com) and select "Create a new repo". You should call the repository `group_cheatsheet`.
4. Person A should then push their code up to github following the instructions on github. You want to "Push an existing repository from the command line" - the instructions at the **bottom** of the page. You should end up pasting a command like

		# Warning: these commands won't work. You need copy the right ones from GitHub.
		git remote add origin https://github.com/username/blah.git
		git push -u origin master


5. Person A then needs to add everyone else as collaborators by going to `Settings > Collaborators` on the repo page
6. Everyone else should then clone the project:
	1. Go to the repo's github page
	2. Copy the `ssh` link from the box on the page
	3. In your `coding_course` folder do

			git clone paste_the_repo_link_here

7. Person B should then download [Twitter Bootstrap](http://getbootstrap.com/) and put it in the `group_cheatsheet` folder
8. Meanwhile Person C should add more content to the page's html
9. Person B should add their changes and push up to github:

		 git add .
		 git commit -m "Added twitter bootstrap"
		 git push

10. Person C should then add their changes and try and push up:

		 git add .
		 git commit -m "Edits to index.html"
		 git push

11. This will probably fail, as C won't have B's changes. To fix this Person C needs to pull and merge (the merge will probably happen automatically if you haven't changed the same files). They should then push again:

		 git pull

		 # fix any merge conflicts if necessary, then add and commit the changes

		 git push

12. Continue to work on the cheatsheet together!

{% endexercise %}