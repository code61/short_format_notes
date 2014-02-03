---
title: Google Analytics
---

Google Analytics is an analytics service provided for free by Google. It allows you get an overview of how many people are visiting your site, where they come from, what they do on your site, and much more. 

### Google Analytics vs. Mixpanel/Kissmetrics

There are many other analytics services out there. [Mixpanel](https://mixpanel.com/) and [Kissmetrics](https://www.kissmetrics.com/) are two of the most well-known.

Kissmetrics seems to be very advanced. They provide a lot of good material on how to use analytics (especially kissmetrics!) through the Kissmetrics blogs and through regular webinars. These are well worth having a look at/signing up for. Kissmetrics will allow you to track individuals from their first visit to your site, through to signing up and any subsequent actions. You can get excellent insights into where your most valuable users come from. Kissmetrics is expensive though - their cheapest plan is $150/month. 

Mixpanel also focusses on tracking individual users. It seems most suited to when you have an app with users who log in. You can add tracking events to certain user actions. Mixpanel has a handy free plan to get you started.

Google Analytics seems to focus mostly on aggregated statistics rather than individual users: it's perfect for a landing page, where you want to track numbers and percentages but doesn't offer the same amount of control for tracking user interaction with your app.

That said, Google Analytics is in the process of a major upgrade to 'Universal Analytics'. This should make it possible to track on a user-level more like Mixpanel or Kissmetrics.

### Setting up Google Analytics

To use Google Analytics you need to place a snippet of javascript (that they provide) on each of the HTML pages on your site. When a user visits the page, the javascript sends a message to the Google Analytics site logging the visit.

{% exercise %}
In your landing page team:
1. Have one team member set up a [Google Analytics](http://www.google.com/analytics/) account. You want to choose the default 'Universal Analytics' option.
2. In the Admin section, create a new account for your landing page.
3. Following the instructions, install the analytics code on all the pages of your site.
4. Push your changes up to the `gh-pages` branch on GitHub.
{% endexercise %}