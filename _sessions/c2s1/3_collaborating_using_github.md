---
title: Github collaboration
---

There are a few options for collaborating with others using Git.

### One-way sharing

As we all know, one-way sharing isn't really sharing at all. Even so, this is the easiest example to look at - in fact we've been doing it almost from the first session of the course.

In one-way sharing, there is one 'master' repository on GitHub that everyone can read from, but only one person can write to:

<div class="row text-center"  style="text-align: center;">
<img src='/assets/git_one_way_share.png'>
</div>



### Forking

One of the options for sharing your changes with me, is for you to publish your repository too. I can then pull your changes down just as you pulled mine.


<div class="row" style="text-align: center;">
<img src='/assets/git_forking.png'>
</div>

Notice that this situation is symmetric - my repositories are equivalent to yours. This makes it a suitable model for many open source projects, where the project maintainer might change over time.

Github makes this model easy by providing a 'forking' button. Forking is a quick an easy way make a copy of my repository on GitHub so that you can then pull and push to it.

### Sharing

The other way or collaborating with git is the 'sharing' model: one person puts the repository on github and gives other people permissions, so you can all push to the same place.

<div class="row text-center"  style="text-align: center;">
<img src='/assets/git_sharing.png' >
</div>

To do this on github, go to your forked landing page repository and click on 'Settings' on the right hand side. Then go to 'Collaborators' and add your team members' github usernames. 

<br>

You can find out more about these different workflow option from the [Git book](http://git-scm.com/book/en/Distributed-Git-Distributed-Workflows).