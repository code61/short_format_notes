---
title: Pushing code to Github
---


Github is a site which will host a git repo online for you, making it easy to collaborate with others. We'll now see how to put some code online.

### Aside: serving a site via Github Pages

Normally when we push code up to github, it just sits there for others to see and contribute to. The code we're about to push up happens to be the code for a website. Instead of the files just sitting there, we want github to *serve* them as a website. The way github does this is through its [github pages](http://pages.github.com/).

There are several ways of getting GitHub to publish your site as a GitHub page. We're going to use a simple trick: in the branches panel of the GitHub app, change the name of the current branch from `master` to `gh-pages`.

<div class="alert alert-warning">If you haven't verified your email with github (you'll see a warning at the top of the screen when you log in). Your GitHub won't serve your page at all. Make sure you've verified you email address, before continuing!</div>

### Pushing code up to github

To push code up to GitHub, in the GitHub app select the 'Push to Github' button (on the top right). You'll be prompted to choose a name (which might as well be `first_site`).

{% exercise %}
1. Log in to GitHub and check you've verified your email address.
1. In the 'Branches' panel of the GitHub app, change the name of the current branch from `master` to `gh-pages`.
2. Click the 'Push to Github' button in the GitHub app.
3. On Github check you can see your `first_site` code.
4. On the code page on github, click on Settings. It should tell you (about half way down) the url where they've published your site. Have a look to see whether you can see it!
5. (If you finish early) Make a change to `index.html` in Sublime Text. Commit the change to the repository and then push it to GitHub. Make sure you can see the change in the code on GitHub and also in the published page.
{% endexercise %}