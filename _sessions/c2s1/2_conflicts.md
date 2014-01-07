---
title: Conflicts
---

The version on your laptop is stored in a fully functional git repository: you can make changes to the site and commit it if you want. What happens if we both make changes at the same time?

{% exercise %}
1. Open `toms_site/index.html` in your code editor, and change the page heading (inside `&lt;h1&gt;`) to something of your choosing. (At the same time I'll also make a change). When you're done, commit your change to the local repository:

        $ git add --all
        $ git commit -m "Changed heading"

2. Wait while I push my own change to the `&lt;h1&gt;` element. 
3. Pull down my changes

        $ git pull

{% endexercise %}

You should now have a message telling you that you have a merge conflict. This is because our two changes have been made at the same time, so git is unabled to work out which is the up-to-date one to keep. If you look in your file you should see things that look like


    <<<<<<< HEAD
        <h1 class="special">My Page</h1>
    =======
        <h1 class="special">Tom C's page</h1>
    >>>>>>> d76d5a62894057f9c5a4dce0fe5f25110eddd24f


To fix the merge conflict you need to edit this by hand, picking the version you want and then do:

    $ git add --all
    $ git commit -m "Fixed conflicts"

{% exercise %}
1. Delete the conflict markers (`&lt;&lt;&lt;&lt;`, `=====`, `&gt;&gt;&gt;&gt;`) from `index.html` (using Sublime text)
2. Delete the version of the heading that you don't want.
3. On the command line:

        $ git add --all
        $ git commit -m "Fixed conflicts"

4. To have a look at what you've just done:

        $ gitk --all

    or 

        $ git log --pretty --graph --oneline

    You should see how the two versions branched and came back together.
{% endexercise %}