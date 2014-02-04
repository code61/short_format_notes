---
title: Project
---

In the last few sessions we have learnt about:

* Responding to `post` requests and receiving data from web forms.
* Storing data in a database and retrieving it.
* Sending emails using ruby.

Your challenge is to build a simple (web) application that uses one or more of these techniques.

Here are a few ideas to get started:

* Add a 'Email this to a friend' option to your FOAAS-type app:
     - On each of your pages add a link to a form.
     - Users enter an email address on the form and click 'Send'.
     - The app sends a link to the page to the email address given.
* Make a URL shortener app (think tiny.cc):
     - The user enters a url and a keystring on a form and presses 'create'.
     - Subsequently, when users visit `/keystring` they get redirected to the url.
* Create a mail-merge type app to send emails to those who sign up to the conding course on your langing page:
     - You export the signups from gmail as a `csv` file (File > Export > csv).
     - You save the csv in your ruby project.
     - Your ruby program reads in the data and sends a welcome email to each applicant.

The key thing here is to **keep it simple** - you only have until Tuesday to work on this: try and get something working!

{% exercise %}
1. Choose a project to work on, either on your own or with a friend, to practice the techniques listed above.
2. Set up your project on github. It should be in a repository called `cfg_project1`.
3. Make it go!
{% endexercise %}