---
title: Google forms trick
---

In order to have a working form on a website there needs to be somewhere for the information to go when the user clicks submit. So far we have only looked at *static* webpages: we have a dumb server that just hands out our hand-created HTML and CSS files. We have no way of accepting information from the user.

Later in the course we will build *dynamic* sites, using Ruby on Rails. In a *dynamic* site the server builds the pages depending on information stored in a database and details provided by the user. When we have a dynamic site we will just submit the form information back to the server.

In the meantime we will use a trick to submit the data from our form to a Google spreadsheet. We'll be using our server (GitHub pages) to provide the form, but Google's servers (for their spreadsheet) to collect the information. We'll be roughly following the instructions from the [morning.am google form post](http://morning.am/tutorials/how-to-style-google-forms/). You might want to read this through first!

### Setting up a Google form

To set up a Google form you need a Google drive account. When you have one:

{% exercise %}
1. Log in to Google drive.
2. Create a form.
    ![Create Google form.](/assets/google_drive_create_form.png)
3. Add a few text fields (e.g. name, email) to your form. ![Google form add fields](/assets/google_form_add_questions.png)
4. Go to view the live form. ![View live form](/assets/google_form_view_live.png)
5. Inspect the page source. Find the bit relating to the form.
{% endexercise %}

The bit of source relating to the form should look something like this:

{% highlight html %}
<form action="https://docs.google.com/forms/d/16faBBpyeqEBbHDyhM2K6s0i6UXBckz9vOQGwKrJKyN0/formResponse" method="POST" id="ss-form" target="_self" onsubmit="">
  <ol style="padding-left: 0">
    <div class="ss-form-question errorbox-good">
      <div dir="ltr" class="ss-item  ss-text">
        <div class="ss-form-entry">
          <label class="ss-q-item-label" for="entry_1087713693">
            <div class="ss-q-title">Name</div>
            <div class="ss-q-help ss-secondary-text" dir="ltr">
            </div>
          </label>
          <input type="text" name="entry.1087713693" value="" class="ss-q-short" id="entry_1087713693" dir="auto">
        </div>
      </div>
    </div>
    <div class="ss-form-question errorbox-good">
      <div dir="ltr" class="ss-item  ss-text">
        <div class="ss-form-entry">
          <label class="ss-q-item-label" for="entry_1239878056">
            <div class="ss-q-title">Email
            </div>
            <div class="ss-q-help ss-secondary-text" dir="ltr"></div>
          </label>
          <input type="text" name="entry.1239878056" value="" class="ss-q-short" id="entry_1239878056" dir="auto">
        </div>
      </div>
    </div>
    <input type="hidden" name="draftResponse" value="[]">
    <input type="hidden" name="pageHistory" value="0">
    <div class="ss-item ss-navigate">
      <div class="ss-form-entry" id="navigation-buttons" dir="ltr" style="display: inline-block">
        <input type="submit" name="submit" value="Submit" id="ss-submit">
        <div class="ss-secondary-text">Never submit passwords through Google Forms.</div>
      </div>
    </div>
  </ol>
</form>
{% endhighlight %}


### Create your own form

You're now going to take the important bits from the form that Google created and create your own form containing them. The important bits are:

* The form `action`.
* The form `method` (which should be 'POST').
* The `name`s (and `type`s) from each of the input elements.

If we copy all of these we will end up submitting the same parameters to the same place and our responses will be recorded in the spreadsheet.

{% exercise %}
Create your own form using the 'important bits' of the Google form.
{% endexercise %}

It should look something like this:

{% highlight html %}
<form action="https://docs.google.com/forms/d/16faBBpyeqEBbHDyhM2K6s0i6UXBckz9vOQGwKrJKyN0/formResponse" method="POST">
  <input type="text" name="entry.1087713693">
  <input type="text" name="entry.1239878056">
  <input type="submit" name="submit" value="Submit">
</form>
{% endhighlight %}

When you submit this form from your browser, you should end up at the Google 'form submitted' screen and your response should be in the spreadsheet.

![Google form response](/assets/google_form_response.png)

### Redirecting the submission
 
It isn't ideal that after the submission the user is sent to a Google 'form submitted' page. Fortunately it is possible to change this. Again, following the instructions from the [morning.am google form post](http://morning.am/tutorials/how-to-style-google-forms/):

{% exercise %}
Add the required iframe and javascript snippet to redirect your form after submission, from the [morning.am google form post](http://morning.am/tutorials/how-to-style-google-forms/).
{% endexercise %}

It should be something like this:

{% highlight html %}

<script type="text/javascript">var submitted=false;</script>
<iframe name="hidden_iframe" id="hidden_iframe" style="display:none;" onload="if(submitted) {window.location='thanks.html';}"></iframe>

<form action="https://docs.google.com/forms/d/16faBBpyeqEBbHDyhM2K6s0i6UXBckz9vOQGwKrJKyN0/formResponse" method="POST" target="hidden_iframe" onsubmit="submitted=true;">
  <input type="text" name="entry.1087713693">
  <input type="text" name="entry.1239878056">
  <input type="submit" name="submit" value="Submit">
</form>
{% endhighlight %}

Don't worry about too much about how this works at this stage. When the user submits the form, they should now be sent to your `thanks.html` page.

### A few things about Google forms

Two things to know about Google forms:

1. You need to check that your form is accepting responses. On Form > Responses make sure that 'Accepting Responses' is ticked.
2. You can set it up to notify you when someone fills in the form. On *the spreadsheet for* your form go to Tools > Notification Rules.






