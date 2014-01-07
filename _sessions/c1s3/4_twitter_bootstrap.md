---
title: Twitter Bootstrap
---

### What's hard about CSS?

You've seen quite a bit of CSS now; it all seems quite straightforward - you write some css, tweak it 'til it looks good and you're done! In theory this is exactly how CSS works and is why CSS is brilliant.

Unfortunately, the realities are not quite so straightforward. Different browsers will render CSS with subtle differences. **Just because your site looks good in Chrome, doesn't mean it will look good in Internet Explorer.** Making your site look good (or even presentable) in multiple browsers takes time, effort and experience. You might be the sort of person who relishes this sort of challenge - if so, great! If not, help is at hand ...

[Twitter Bootstrap](http://getbootstrap.com) is set of CSS (& Javascript) files, released by the makers of Twitter. It makes a lot easier to produce websites that won't make you want to sick up into your mouth everytime you look at them - and that look the same in all browsers. We'll now look at adding Twitter Bootstrap to a page.

{% exercise %}
The aim of the rest of this session will be to create the website for ["Sam's Sarnies"](http://code61.github.io/bootstrap_exercise/) using twitter bootstrap.

1. Clone down the repository for the bootstrap exercise. In your `coding_course` folder, run

         git clone https://github.com/code61/bootstrap_exercise.git
    
2. Open `bootstrap_exercise/index.html` in your browser.
2. Go to the [Bootstrap](http://getbootstrap.com) website (it's hosted at github, like your `first_site`) and click the `Download Bootstrap` button (not the Download Source).
2. Unzip and copy the `dist` folder into the `bootstrap_exercise` folder.
3. Open `index.html` in Sublime Text and Chrome.
4. Add a link to the twitter bootstrap stylesheet into `index.html`

         &lt;link href='dist/css/bootstrap.css' rel='stylesheet'&gt;
         

    Note that you're using a relative link to a file two subfolders down.
5. Refresh the page in Chrome. Notice how the fonts have changed.
6. Add the following line to the `head` section:

        &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;

    as suggested in the `CSS > Overview` section of the [Bootstrap docs](http://getbootstrap.com/css/#overview-mobile).
{% endexercise %}