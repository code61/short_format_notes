---
title: Functions
---

A *function* (or *method*) is a way of separating out a piece of programming logic so that you can use it elsewhere.

### Defining and calling a function

There are two steps in using a function

1. *Define* the function: to define a function you need to give it a name and write the code contained in the function.
2. *Call* the function: when you use the function, we say that the function is being 'called'. Calling a function causes the code inside it to be run.

{% highlight ruby %}
def first_name(full_name)
  full_name.split.first
end

first_name('Tom Close') #=> 'Tom'
first_name('Ashok Menon') #=> 'Ashok'
{% endhighlight %}

In the example above the function takes a single *parameter* (in this case the full name that you want to split up).

* When you call the function you give it the full name (e.g. `"Tom Close"`) as a string.
* The the variable `full_name`, that you specified in the function definition, is set to the name you provided. In this case this is equivalent to `full_name = "Tom Close"`.
* The statements inside the function body are then executed.
* The function *returns* the value of the last expression to be evaluated.

{% exercise %}
1. **Fork** and clone down the exercises for this session: [https://github.com/code61/exercises_c4s1](https://github.com/code61/exercises_c4s1)
2. Install the gems you need - in the `exercises_c4s1` folder, run: `bundle install`
3. Open `names.rb` in sublime text.
4. Using the code above fill out the `first_name` function.
5. Open `irb` and load in the file by running `load 'names.rb'`.
6. Try the function out, by calling it in irb.
7. Close `irb` and run the tests we've provided for the function by running `rspec spec/first_name_spec.rb`.
8. Now try and write the body of the `last_name` function. Follow the same procedure of trying in irb, then running the test `rspec spec/last_name_spec.rb`.
9. (Ext) Improve your `last_name` function, so that it can cope with composite last names (treating everything after the first name as the last name). Test your solution by running `rspec spec/ext_last_name_spec.rb`
10. (Ext) Work through the functions in `dates.rb`. Test your solutions running the tests in files `spec/month_spec.rb`, `spec/last_digit_spec.rb`, `spec/penultimate_digit_spec.rb`, `spec/ordinal_suffix_spec.rb` and `spec/date_in_words_spec.rb`.
{% endexercise %}
