---
title: External stylesheets
---

So far you have written your CSS rules directly in the `head` section of your html page:

{% highlight html %}
<!DOCTYPE html>
<html>
  <head>
  	<title>My page</title>
  	<style type="text/css">
  	  h1 { color: red; }
  	</style>
  </head>

  <!-- body goes here -->

</html>
{% endhighlight %}

We did this to make your first experiments with CSS quick an easy. In a live site it is considered bad practice to put your CSS inside the `head` section: Typically a site will have one set of styles that apply to all the pages. By separating these CSS rules into their own file you (a) reduce repetition in your code and (b) reduce the amount of information that has to be sent to the browser for each page - if the CSS file applies to the whole site, it only needs to be sent to the visitor once.

To link to an external CSS file you can do the following:
{% highlight html %}
<!DOCTYPE html>
<html>
  <head>
  	<title>My page</title>
  	<link rel='stylesheet' type='text/css' href='path/to/my_css_file.css'>
  </head>

  <!-- body goes here -->

</html>
{% endhighlight %}

### Linking to other files

Linking to other files (stylesheets, javascript files, images) can be done in several ways, just like linking to another page. Say you have the following directory structure:

    first_site
    |
    ---- index.html
    |
    ---- images
    |    |
    |    ---- background.jgp
    |
    ---- stylesheets
         |
          ---- main.css

and you're going to deploy your site to "http://www.my_first_site.com". Suppose you want to link to `main.css` from `index.html` and to `background.jpg` from `main.css`. There are three different styles of links you can use:

#### 1. Absolute external links

Absolute external links include the complete url to the resource you're linking to:

{% highlight html %}
<!-- in index.html -->
<link rel="stylesheet" type="text/css" href="http://www.my_first_site.com/stylesheets/main.css">
{% endhighlight %}
{% highlight css %}
/* in main.css */
body {
  background-image: url("http://www.my_first_site.com/images/background.jpg");
}
{% endhighlight %}

Absolute external links can be used to link to resources held on different sites, but wouldn't usually be used for links between your own site. They're a bit fragile - if you change your domain name all the links will break. They also won't work when you're developing locally.

#### 2. Absolute local links

Absolute local links contain the path to the resource *relative to the site's root*. The site's root is (roughly) the folder that contains the site - in this case, `first_site`. **Absolute local links begin with a `/`**:

{% highlight html %}
<!-- in index.html -->
<link rel="stylesheet" type="text/css" href="/stylesheets/main.css">
{% endhighlight %}
{% highlight css %}
/* in main.css */
body {
  background-image: url("/images/background.jpg");
}
{% endhighlight %}

Absolute local links are a bit more flexible than absolute external links: e.g. if you change your domain name everything will still be fine. They're sometimes useful for your own static sites, but probably won't work when developing locally (because the root will be taken to be the root of your file system and not the folder containing the site!).

#### 3. Relative local links

Relative local links contain the path to the resource *relative to the file where the link is written*. **Relative local links don't begin with `/`**:

{% highlight html %}
<!-- in index.html -->
<link rel="stylesheet" type="text/css" href="stylesheets/main.css">
{% endhighlight %}
{% highlight css %}
/* in main.css */
body {
  background-image: url("../images/background.jpg");
}
{% endhighlight %}

To link to the stylesheet from `index.html` we use `stylesheets/main.css` which says "look in the same folder I'm in (`first_site`) and find a folder called `styleheets` and a file in it called `main.css`".

To link to the image from the stylesheet is slightly more complicated: we use `../images/background.jpg`. This means "go to the folder above the one I'm in (I'm in `stylesheets`, so that's `first_site`) and find a folder called `images` and a file in it called `background.jpg`". Notice how `..` is used to go up a folder, just like in the command `cd ..`. 

Relative links are the most flexible - they will work on your local file system. The only think you have to be careful about is moving your files into different folders, which can cause links to break.

**You should be using relative local links in these exercises.**


{% exercise %}
1. Move to your `coding_course` folder and clone the repository for this session:

         git clone https://github.com/code61/html3.git

2. Open `exercise1.html` in Sublime Text and Chrome.
3. Link in the external stylesheet `exercise1.css`. Save, add and commit. Make sure the results show up in Chrome when you refresh.
4. Open `exercise2.html` in Sublime Text and Chrome.
5. Move the css from the `head` into a separate stylesheet, which you should call `exercise2.css`. Link to this stylesheet in the head.
6. Create another stylesheet called `exercise2-custom.css`.
7. In this stylesheet write:

        .color-info { border: 5px dotted purple; }

8. Link in this stylesheet too, so that the changes take effect.
9. If you have time, move any styles you have added to your `first_site` into a separate stylesheet.
{% endexercise %}
