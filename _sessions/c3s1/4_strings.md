---
title: Strings
---

We've already seen a string in action in `hello.rb`. We'll now look in more detail at the different ways you can write a string in your code. When a string is written directly in your code (as opposed to being read in from user input) it is referred to as a string literal. We will look at the two most common ways of creating string literals.

### Single-quoted string literals

Single-quoted strings are boring. They look almost exactly as you write them.

{% highlight ruby %}
puts 'Hello \n Tom'
# => Hello \n Tom
{% endhighlight %}

There are only two exceptions to this: `\'` becomes `'` and `\\` becomes `\`.

{% highlight ruby %}
puts 'Dave\'s house'
# => Dave's house
puts 'Hello \ what is \\ going on?'
# => Hello \ what is \ going on?
{% endhighlight %}

Both of these make sense when you think about them:

* You need something like `\'` to become `'`, otherwise it would be impossible to create a string with a `'` character in it.

* Once you have `\'` becoming `'` you need something like `\\` to become `\`, otherwise it would be impossible to create a string ending in `\`.

So, single-quoted strings are boring. They replace the minimum amount of stuff possible.

### Double-quoted string literals

Double-quoted strings are much more exciting. They allow all sorts of special characters, usually *escaped* with `\`. For example, `\n` in a string signifies a new line:

{% highlight ruby %}
puts "Hello \n Tom"
# => Hello
# => Tom
{% endhighlight %}

More importantly double-quoted strings allow you to do *string interpolation* - baking your own variables into a string, using the `#{ }` symbol:

{% highlight ruby %}
name = "Tom"
puts "Hello #{name}"
# => Hello Tom
{% endhighlight %}

{% exercise %}
1. Open the file `hello_you.rb` in Sublime Text.
2. Read through the program to see if you can figure out what it does. Run it (`ruby hello_you.rb`) in the console (**not** irb) to see if you're right.
3. Run the file `test_hello_you.rb`. You should see that the test fails.
4. Alter the file `hello_you.rb` so that instead of just showing the name you type (e.g. Bob) it instead shows "Hello Bob"
5. Run the test file again. Hopefully it should now pass.
{% endexercise %}

What we've just done is an example of something called **test-driven development** or **TDD** - writing a set of tests and then writing the code so that they pass. Test-driven development is something that some software developers go mad about. I'm not 100% convinced personally - writing tests before you write the code, necessitates having a pretty good idea of knowing exactly what you're writing before you start. Possibly worryingly, I find that this is often not the case. What is really important is having ways to automatically test your code, whether those tests were written before you wrote your code, or immediately after it.

In this course we'll often provide pre-written tests so that you can check your solutions to the exercises, TDD-style. 

### Fun with strings

Ruby strings have a lot of methods that you can play with.

{% exercise %}
1. Open the file `strings.rb`
2. See if you can predict what will happen when you run each line.
3. See if you're right in irb.
{% endexercise %}

### Other ways of creating strings

There are other ways of creating strings. You probably won't need to use them that often. For more information see [http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals](http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals)
.