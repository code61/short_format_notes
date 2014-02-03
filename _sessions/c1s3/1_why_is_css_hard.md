---
title: What's hard about CSS?
---

You've seen quite a bit of CSS now; it all seems quite straightforward - you write some css, tweak it 'til it looks good and you're done! In theory this is exactly how CSS works and is why CSS is brilliant.

<br>
<div style="display: block;margin-left: auto; margin-right: auto; width: 200px;">
<img src="/assets/cat_pic.jpg" class='img-polaroid' width='200px'>
</div>
<br>

Unfortunately, the realities are not quite so straightforward. Different browsers will render CSS with subtle differences. Take a look at the cat picture above. The styling is relatively simple - all we've done is add a border and a shadow. The following CSS will probably do this in your browser:

{% highlight css %}
.img-polaroid {
  padding: 4px;
  border: 1px solid rgba(0, 0, 0, 0.2);     /* transparent black border */
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
{% endhighlight %}

However, to get this effect in all browsers you need the following:

{% highlight css %}
.img-polaroid {
  padding: 4px;
  background-color: #fff;
  border: 1px solid #ccc;                           /* grey border for browsers that can't do transparency */
  border: 1px solid rgba(0, 0, 0, 0.2);             /* put the transparency after for browsers that do */
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1); /* some browers only understand webkit box shadow */
     -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1); /* others need this */
          box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
{% endhighlight %}

 **Just because your site looks good in Chrome, doesn't mean it will look good in Internet Explorer.** Making your site look good (or even presentable) in multiple browsers takes time, effort and experience.

### What else is hard about CSS?

About 5 years ago, 'all' you would have had to worry about is the cross-browser display issues. Since then, the mobile web has exploded and you have another (far more important) concern: how will your site look when viewed on a mobile?

Making webpages that look good when viewed at multiple different sizes is a whole new level of complexity.

### Should I just give up then?

You might be the sort of person who relishes this sort of challenge - if so, great! If not, help is at hand ...

