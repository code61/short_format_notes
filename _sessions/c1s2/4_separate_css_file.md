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

#### 1. Absolute links

Absolute external links include the complete url to the resource you're linking to. **Absolute links start with either http:// or https://**.

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

Absolute external links can be used to link to resources held on different sites, but wouldn't usually be used for links within your own site. They're a bit fragile - if you change your domain name all the links will break. They also won't work when you're developing locally.

#### 2. Root-relative links

Root-relative links contain the path to the resource *relative to the site's root*. The site's root is (roughly) the folder that contains the site - in this case, `first_site`. **Root-relative links begin with a `/`**:

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

Root-relative links are a bit more flexible than absolute external links: e.g. if you change your domain name everything will still be fine. They're sometimes useful for your own static sites, but probably won't work when developing locally (because the root will be taken to be the root of your file system and not the folder containing the site!).

#### 3. Document-relative links

Document-relative links contain the path to the resource *relative to the file where the link is written*. **Document-relative links don't begin with `/`**:

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

To link to the image from the stylesheet is slightly more complicated: we use `../images/background.jpg`. This means "go to the folder above the one I'm in (I'm in `stylesheets`, so that's `first_site`) and find a folder called `images` and a file in it called `background.jpg`". 

<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Important to know</h3>
  </div>
  <div class='panel-body'>
    In document-relative links (and in many other places e.g. command line navigation)
   <ul>
      <li><code>.</code> means in the folder <strong>that I'm in</strong></li>
      <li><code>..</code> means in the folder <strong>above the one that I'm in</strong></li>
    </ul> 
  </div>
</div>

Relative links are the most flexible - they will work on your local file system. The only think you have to be careful about is moving your files into different folders, which can cause links to break.

**You should be using relative local links in these exercises.**

For a recap of all this, read [this article](https://www.inkling.com/read/dreamweaver-cs6-missing-manual-david-sawyer-mcfarland-1st/chapter-4/understanding-links).

{% exercise %}
1. Return to `exercise1.html` and separate the CSS out into a separate file (called `exercise1.css`).
2. Check that the CSS still shows up when you view the site in the browser.
3. Make a change in `exercise1.css` and check that you can see that in the browser. (You might need to refresh the page a few times).
{% endexercise %}
