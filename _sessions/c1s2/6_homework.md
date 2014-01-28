---
title: Homework
---

### Finishing off

{% exercise %}
Finish off both CSS exercises from class. Check your solutions online:
* Find the HTML2 repository on Code61's github page.
* In the `branch` dropdown (just above the list of files) select the `solution` branch.
* Click on the files below to see the solution
{% endexercise %}

### More HTML/CSS

{% exercise %}
1. Complete the whole of Project 3 on the [General Assembly Dash](https://dash.generalassemb.ly/projects) site.
2. Make some changes to your `first_site` based on what you've learnt. Make sure you add them to git, push them to github and check you can see them online.
3. (Optional) Do the projects from the [Codecademy Web Track](http://www.codecademy.com/tracks/web) Sections 7, 8 &amp; 9.
4. (Optional) Read [this article](https://www.inkling.com/read/dreamweaver-cs6-missing-manual-david-sawyer-mcfarland-1st/chapter-4/understanding-links) about absolute vs. relative links.
{% endexercise %}

### Get your domain name to point to your GitHub Page

The point of this exercise is to set up your domain name to point towards your new GitHub pages site.

As GitHub hosts many different pages at their IP address, it isn't quite as simple as pointing your domain address towards that IP address. There are two things you need to do to get your domain name working with your GitHub pages site:

1. Tell your domain registrar (e.g 123-reg or godaddy) to point your domain name towards GitHub's IP address.
2. Tell GitHub that requests to your domain name should come to your site.

Github explains this [here](https://help.github.com/articles/setting-up-a-custom-domain-with-pages).

##### Pointing your domain name towards GitHub

For the first bit you need to log in to your domain registrar and change the DNS settings. You want an *A-record* pointing to `204.232.175.78` (which is github.com). Note that it can take up to a couple of days for DNS changes to propagate.

If you're using 123-reg, your should log in, select your domain from the list, and click "Manage". You should then go to "Manage DNS".

![123-reg DNS Settings](/assets/dns_settings.png)

(The @ dns entry stands for the root or bare domain.)

{% exercise %}
Log in to your domain registrar and set an A-record to point towards GitHub.
{% endexercise %}

Your changes won't take effect immediately.

##### Tell github to expect requests for your domain name

{% exercise %}
1. Open Sublime Text and create a new file.
2. Write your domain name on the first line of the new file e.g:

         mydomain.com

3. Save that file as `CNAME` (uppercase, with no extension) in your `first_site` folder
4. Commit your change and then push to github.
{% endexercise %}