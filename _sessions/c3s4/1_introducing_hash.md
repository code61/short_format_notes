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
1. Grab the code for the session:

		git clone https://github.com/code61/ruby4.git

2. With your partner work through `ruby4/hash_examples.rb`. See if you can guess what each expression will do, then test by pasting into irb.
3. If you finish early, make a start on `hash_exercises.rb`.
{% endexercise %}