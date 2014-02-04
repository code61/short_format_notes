---
title: More about hashes
---

In the last exercise you will have learnt a number of things about hashes. Here is a summary of the important points:

### Accessing and setting elements

{% highlight ruby %}
h = {'one' => 1, 'two' => 2, 'three' => 3}

h['one'] #=> 1
h['four'] #=> nil

h['five'] = 5
h['one'] = 1.0

h #=> {'one' => 1.0, 'two' => 2, 'three' => 3, 'five' => 5}
{% endhighlight %}

* You access an element via its key: `h['one']`
* If the key isn't in the hash this will give `nil`
* You add new elements by setting their key
* If the key already exists its value will be updated

### Methods

Hashes have a number of methods, which behave as you would expect e.g.

* `length`
* `empty?`
* `keys`, `values`
* `has_key?`, `has_value?`

### Iterating

Just like an `Array`, you can iterate over a `Hash` using the `each` method. Unlike array iteration, in hash iteration the block accepts two parameters: the key and the value:

{% highlight ruby %}
h = {'one' => 1, 'two' => 2, 'three' => 3}

h.each do |key, value|
	puts "#{key} = #{value}"
end
{% endhighlight %}

### Combining hashes

Combining hashes is done by using the `merge` method. The values from the second hash are added to the first, replacing them if they already exist. You will often see this used in rails for specifying default options to a function:

{% highlight ruby %}
# note how the first version of b gets overwritten
{'a' => 1, 'b' => 2}.merge({'b'=>3, 'c'=>4}) #=> {'a'=>1, 'b'=>3, 'c'=>4}

# real life example
def print_names(opts)
	default_opts = {'fancy_format' => true, 'max_length' => 20}

	# replace the defaults with options supplied
	my_opts = default_opts.merge(opts) 

	if my_opts['fancy_format']
		# ....
	end

	#...
end
{% endhighlight %}

The options example above is a common use of a hash in real life code.

### Using a hash for counting

One special use of a hash is for counting things. The following code is an example of how to do this.

{% highlight ruby %}
h = {}

['a', 'b', 'a', 'a'].each do |letter|
    if h.has_key?(letter)
        # if the letter is already in the hash, increase
        # its count by 1
        h[letter] += 1
    else # letter isn't in the hash
        # so put it in and set the count to 1
        h[letter] = 1
    end
end

h #=> {'a' => 3, 'b' => 1}
{% endhighlight %}

You can make this example a bit shorter by using a hash with a **default value**: normally a hash will return `nil` if the key isn't there, but we can set it up to return something else. In particular we'll set it up to return 0:

{% highlight ruby %}
# set up a hash with default value 0
h = Hash.new(0)

['a', 'b', 'a', 'a'].each do |letter|
    h[letter] = h[letter] + 1
end

h #=> {'a' => 3, 'b' => 1}
{% endhighlight %}

If the letter isn't in the hash yet, the default value of 0 will be returned. Otherwise the current count will be returned. Either way, we just need to increase the value by 1.


{% exercise %}
1. Open `hash_exercises.rb` in Sublime Text.
2. Work through the file fixing the functions to work as described.
3. Check your work by running `test_hash_exercises.rb` on the command line.
4. If you finish early move on to `array_conversion_examples.rb`.
{% endexercise %}
