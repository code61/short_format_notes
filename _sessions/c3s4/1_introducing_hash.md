---
title: Hashes
---

A `Hash` is ruby's basic *key-value store*: a place where you can store values, and look them up by a key. The `Hash` and the `Array` are ruby's two common ways of storing a collection of objects. The key differences between 'Hash' and 'Array' are:

* In an `Array` objects are stored in order. You can think of an `Array` as a list.
* In an `Array` we reference objects by a numerical index.
* In a `Hash` there is no order on the objects. You can think of a `Hash` as a general collection.
* In a `Hash` objects are referenced by a `key`. The key can be a number or a word (or several other things).

Here is an example of a simple hash:

{% highlight ruby %}
character = {'name'=>'Bart', 'surname'=>'Simpson', 'age'=> 10, 'catchphrase' => 'Eat my shorts'}

character['name'] #=> 'Bart'
character['catchphrase'] #=> 'Eat my shorts'
{% endhighlight %}

In particular:

* You write a `Hash` using the curly brackets `{ }`.
* Each element of the hash has a key e.g. `'name'` and a value e.g. `'Bart'`.
* When you write the hash you put the keys and values using the `=>` symbol: `key => value`.
* To pull values out of a hash you put the key inside `[ ]`. 

{% exercise %}
1. With your partner work through the expressions below. See if you can guess what each expression will do, then test by pasting into irb.
2. If you finish early, have a look at the 'Arrays and back' extension tab.
{% highlight ruby %}
h = {'one' => 1, 'two' => 2, 'three' => 3}

# Accessing elements
# ------------------

h['one']
h['two']
h['four']

# Setting elements
# ----------------

h['five'] = 5
h['one'] = 1.0
h.delete('one')  # What does this return? Does it change the hash?

# Some methods
# ------------

h.length
h.empty?
h.keys
h.values
h.has_key?('one')
h.has_value?(7)

# Iterating
# ---------

h.each do |key, value|
  puts "#{key}: #{value}"
end


# Combining
# ---------

h1 = {'a'=>1, 'b'=>2}
h2 = {'b'=>3, 'c'=>4}

h1.merge(h2)
h1    # what has this done to h1?
h1.merge!(h2)
h1    # what is h1 now?


# Using a hash for counting (extension)
# -------------------------

# start with an empty hash
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

h   # what is h now?

# A slicker way to count (extension)
# ----------------------------------

# A slightly slicker way of doing this is
# using a hash with a default value:

h = Hash.new(0) # 0 is the default value that is 
                # returned when the key is missing

['a', 'b', 'a', 'a'].each do |letter|
    h[letter] += 1
end
{% endhighlight %}

{% endexercise %}