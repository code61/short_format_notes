---
title: What is a web page?
---

A webpage is just a set of files that your web browser knows how to display.

There are three possibilities for the types of files they could be: HTML, CSS and Javascript. Most web pages will be a mixture of all three. Because the files have to be able to be interpreted by all web browsers on all operating systems, the choices are limited and don't change very often.

<ul class="thumbnails">
  <li class="span3">
    <div class="thumbnail">
      <img src="/assets/html5_logo_128.png" style="height: 128px;" alt="">
      <h3>HTML</h3>
      <p><em>HyperText Markup Language</em> encodes the information that is sent back from the server.</p>
    </div>
  </li>
  <li class="span3">
    <div class="thumbnail">
      <img src="/assets/css.jpeg"  style="height: 128px;" alt="">
      <h3>CSS</h3>
      <p><em>Cascading Style Sheets</em> tell your browser how to display that information.</p>
    </div>
  </li>
  <li class="span3">
    <div class="thumbnail">
      <img src="/assets/js.jpeg"  style="height: 128px;" alt="">
      <h3>Javascript</h3>
      <p>Javascript is a programming language that can be used to provide client-side interactivity.</p>
    </div>
</li>
</ul>

HTML, CSS and Javascript are known as **client-side** technologies, because they are sent to your web browser (the client).

#### Programming language vs markup language

HTML (*HyperText Markup Language*) is a way of writing information so that it can be interpreted by a web browser. It is *not* a programming language - you can't do calculations in it - it is a _markup_ language. CSS is also a markup language. Javascript is a programming language.

#### Content/style separation

Back in the early days of the web HTML would both store the information and tell the browser how to display it. People then realised that this was a bad idea - making a small change such as changing the colour of a heading would require edits all over the place, which made sites hard to maintain. HTML is now used just to display the information (text etc.) that is stored in the page. CSS is used to tell the browser how to display the information.

#### Viewing HTML, CSS and js

Because the HTML, CSS and js are sent you your browser, it is easy for you to look at them. **There are no secrets in HTML, CSS or js.** If there's a part of a webpage that you like, it's easy to find out how it is coded and use the technique yourself.

Every browser provides a way to look at the source of the page you're currently viewing. In Chrome you do `View > Developer > View Source`. This will show you the raw HTML but isn't always the easiest thing to look at.

Several browsers also provide developer tools, which allow you to *interactively* view the page source. In Chrome you can access these by doing `View > Developer > Developer Tools`. If you use Firefox, you can get similar functionality with the Firebug plugin. These tools are the best way to investigate a web page. Over the course you will be using them a lot on your own pages, especially when things aren't working exactly as you expect.

There are a few features of the Chrome developer tools that it is worth pointing out now.


{% exercise %}
1. Open this page in Google Chrome
2. View the page source by doing one of the following:
    * View > Developer > View Source
    * Tools > View Source
3. Open the developer tools by doing one of the following:
    * View > Developer > Developer Tools
    * Tools > Developer Tools
4. Use the magnifying glass in the bottom left to hover over bits of the page and find the related HTML.
5. Hover over the HTML code in the developer tools box and watch as different parts of the page are highlighted.
6. Try changing some of the CSS on the right hand side. To undo any changes just refresh the page.
7. Have a look on the `Resources` tab. See if you can find the CSS, javascript and image files used on this page.
8. Visit a few of your favourite websites and repeat this process.
{% endexercise %}