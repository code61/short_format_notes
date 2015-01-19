---
title: Recap from last time
---

### Before you start: updating gitgit

There have been some updates and improvements to gitgit! To get these
improvements open the command line and run:

    gem update gitgit

To check it worked run

    gitgit version

it should say '0.0.5' (or higher).

### Before you start: verifying github email address

Today we're going to be putting up your first site using [GitHub
Pages](https://pages.github.com/) - a free hosting solution provided by
GitHub.

In order for this to work you need to have **verified your email address
with GitHub**.

{% exercise %}
<ol>
  <li>Log into GitHub.</li>
  <li>If you see a warning at the top that you haven't verified your
email address, follow the instructions to do that now.</li>
  <li>If not, you're good to go!</li>
</ol>
{% endexercise %}

### Review exercise

{% exercise %}
<ol>
  <li>Open the comand line</li>
  <li>Navigate to your 'first_site' folder (cd/ls)</li>
  <li>Open 'first_site/index.html' in Sublime Text</li>
  <li>Make a change to the file</li>
  <li>Save the changes and push to github ("gitgit save", "gitgit
push")</li>
  <li>Log into github and check you can see your changes</li>
</ol>

{% endexercise %}

### Something new: publishing site using GitHub pages

You're now going to publish your 'first_site' using [GitHub Pages](https://pages.github.com/).

To do this you need to push your website up to a branch called
'gh-pages'. You don't know about branches yet, but you can see them on
github. Right now you'll just see a single branch called 'master'.

You don't actually need to understand anything about branches at the
moment, as gitgit makes it really easy to publish as a github page. Just
run

    gitgit publish

When you go to github you should now see a 'gh-pages' option in the
branches dropdown.

The 'gh-pages' branch is a signal to github that you want your code to
be deployed as a website. You can find the url of your website by
looking in your repository settings on GitHub.
