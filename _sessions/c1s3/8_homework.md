---
title: Homework
---

## Finishing off

{% exercise %}
1. Finish off the bootstrap_exercise from class
2. (Optional) Push your code up to github.
3. (Optional) Serve it as a site using gh-pages, following the same instructions as before
{% endexercise %}


## Set up your domain name

The point of this exercise is to set up your domain name to point towards your new GitHub pages site.

As GitHub hosts many different pages at their IP address, it isn't quite as simple as pointing your domain address towards that IP address. There are two things you need to do to get your domain name working with your GitHub pages site:

1. Tell your domain registrar (e.g 123-reg or godaddy) to point your domain name towards GitHub's IP address.
2. Tell GitHub that requests to your domain name should come to your site.

Github explains this [here](https://help.github.com/articles/setting-up-a-custom-domain-with-pages).

### Telling GitHub that requests for your domain name are for your site

Doing this is relatively simple. You just have to add a special file to your repository and push it up to GitHub:

{% exercise %}
1. Open Sublime Text and create a new file.
2. Write your domain name on the first line of the new file e.g:

         mydomain.com

3. Save that file as `CNAME` (uppercase, with no extension) in your `first_site` folder
4. Add and commit your changes locally, then push to github:

         git add --all
         git commit -m "Added CNAME"
         git push

{% endexercise %}

### Pointing your domain name towards GitHub

For the first bit you need to log in to your domain registrar and change the DNS settings. You want an *A-record* pointing to `204.232.175.78` (which is github.com). Note that it can take up to a couple of days for DNS changes to propagate.

If you're using 123-reg, your should log in, select your domain from the list, and click "Manage". You should then go to "Manage DNS".

![123-reg DNS Settings](/assets/dns_settings.png)

(The @ dns entry stands for the root or bare domain.)

{% exercise %}
Log in to your domain registrar and set an A-record to point towards GitHub.
{% endexercise %}

Your changes won't take effect immediately. You can check your DNS settings from the command line by running

    $ host yourdomain.com

at the command prompt on a Mac, or

    $ nslookup yourdomain.com

on Windows.