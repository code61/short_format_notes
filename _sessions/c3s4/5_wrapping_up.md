---
title: Rounding up
---

Today we learnt about hashes (and symbols). Hashes are really important and we'll be using them heavily from now on. The following methods are the ones you will use the most. Make sure you know them by heart and how to use them:

* `h[key]`, `h[key]=`
* `keys`, `values`
* `has_key?`, `has_value?`
* `each`
* `select`

You can find out more about all the different hash methods by browing the [ruby hash docs](http://www.ruby-doc.org/core-1.9.3/Hash.html) (to find this just Google 'ruby hash').

{% exercise %}
1. Run `i_have_a_dream.rb` from the command line:

        ruby i_have_a_dream.rb

    Have a look at the file `index.html` it created using chrome.
2. Fix the function `frequencies` in `i_have_a_dream.rb` so it works as stated. You can test your solution using `test_i_have_a_dream.rb`. Have a look at the `index.html` that your new version creates.
3. Fix the function `remove_stop_words` in `i_have_a_dream.rb`. You can test your solution using `test_i_have_a_dream.rb`. Have a look at the `index.html` that your new version creates.
{% endexercise %}

### Quick explanation of I have a dream

I have a dream is a program that reads in a file and produces an html word cloud.

* The function `text` reads in the text from `i_have_a_dream.txt` and removes all punctuation.
* The function `frequencies` is meant to count the words using a hash.
* The function `remove_stop_words` should filter out common english words like 'a' and 'the'.
* The function `write_html` takes the filtered words and frequencies and writes them into the html template `index.html.erb`.
* In that file there is some javascript that generates the tag cloud, using a library called [d3.js](http://d3js.org/)

Feel free to poke around with stuff. If you commit all your changes using git, you should always be able to get back to a working version!