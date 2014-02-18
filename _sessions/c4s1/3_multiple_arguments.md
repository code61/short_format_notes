---
title: More about arguments
---

So far we've only looked at functions with a single argument. What if we want to have no parameters, multiple parameters or a variable number?

### Functions with no parameters

It is sometimes useful to have a function with no parameters, often for a task that you need to perform repetitively:

{% highlight ruby %}
require 'csv'

def load_data
  # read data in from the csv file
  data = CSV.read('tmp/students/data.csv')

  # remove the header row
  data[1..-1]
end
{% endhighlight %}

When you call a function with no parameters, you don't need to use brackets:

{% highlight ruby %}

load_data #=> [[..], [..], [..], ...]

{% endhighlight %}

<p class='small'>[In fact you don't need brackets when you're calling a function with arguments either. For the time being we'll use them though, to keep things simple.]</p>

### Functions with multiple parameters

Defining and calling a function with multiple parameters is just like defining and calling one with a single parameter:

{% highlight ruby %}
def insult(word, strength)
  "#{word.capitalize} off" + '!' * strength
end

insult('goose', 4) #=> "Goose off!!!!"
{% endhighlight %}

When you call a function with multiple parameters, you need to make sure you provide the right number, otherwise you'll get an error.

{% highlight ruby %}
insult('badger', 4, 5)
#=> ArgumentError: wrong number of arguments (3 for 2)
#=> from (pry):2:in `insult'
{% endhighlight %}

### Functions with optional parameters

Sometimes it's useful to be able to supply a parameter if you want, but use a sensible default otherwise:

{% highlight ruby %}
def i_love(thing = 'ruby')
  "I love #{thing}!"
end

i_love('coding') #=> "I love coding!"
i_love           #=> "I love ruby!"
{% endhighlight %}

{% exercise %}
1. Open `more_functions.rb` and begin to work your way throught the functions in the file.
2. For each function you write, reload the file into irb to try it out: `load 'more_functions.rb'` (run this **inside** `irb`).
3. For each function you write, run the appropriate test e.g.: `rspec spec/multiply_and_sum_spec.rb` (run this **outside** `irb`, on the command line).
4. If you get onto the `describe_result` function, you will need to start by writing your own test in `spec/describe_result_spec.rb`. (Do this by copying and pasting from another test, and make the appropriate changes.)
{% endexercise %}
{% endexercise %}