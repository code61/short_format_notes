---
title: Introducing classes
---

A class

- you can view a class as a blueprint for a set of behaviour
- an instance of a class is called an object

Classes are common to many programming languages. Languages that use classes to organise their logic are often referred to as Object-Oriented programming languages. Apart from ruby, other object-oriented programming languages include python, c++ and Java, meaning that the vast majority of code written at the moment is object-oriented code. 

Ruby is a more object-oriented language than most: in ruby every value (e.g. integers, strings, arrays, hashes, etc.) is an object. 

Have a look at the following use of a `Circle` object:
{% highlight ruby %}
c = Circle.new(10)

c.radius #=> 10
c.area   #=> 314.2
{% endhighlight %}

The circle object holds the data, or **attributes**, of the circle (in this case just the radius) and has **methods** to perform operations (in this case calculating the area), using that data.

We define the behaviour of this object using a class. You can view a class as a blueprint for a given type of object. We say that the objects that follow the blueprint that the class defines are *instances* of the class.

{% highlight ruby %}
class Circle
  def initialize(radius)
    @radius = radius
  end

  def radius
    @radius
  end

  def area
    3.142 * @radius * @radius
  end
end
{% endhighlight %}

There are a few things to note here:

* The `initialize` method is run when you create the instance of the class e.g. `c = Circle.new(10)`
* Instance variables (beginning with `@`) are used to hold the attributes of the object e.g. `@radius`. Instance variables can be used inside any of the class's methods.

{% exercise %}
1. Clone down the code for the session: [https://github.com/code61/exercises_c4s2.git](https://github.com/code61/exercises_c4s2.git)
2. Run `bundle install` to grab the required gems.
1. Have a look at `circle.rb` in sublime text:
    - load it into irb: `load './circle.rb'`
    - create a circle: `c = Circle.new(5)`
    - check its radius and area: `c.radius` and `c.area`
    - write the contents of the missing `circumference` method
    - run the tests: `rspec spec/circle_spec.rb` (on the command line **not** irb)
2. Open `square.rb` in sublime text:
    - write the missing methods
    - load it into irb to check they work
    - run the tests: `rspec spec/square_spec.rb` (on the command line)
3. Open `person.rb` in sublime text:
    - write the missing methods
    - load it into irb to check they work
    - run the tests: `rspec spec/person_spec.rb` (on the command line)
4. (Ext) have a look in `mastermind.rb` and `guess.rb`.
    - Write the missing methods in `guess.rb`.
    - Run the tests to check it works.
    - Use the `Guess` class you've just written to help write the missing methods in `mastermind.rb`
    - Run the mastermind tests to check it works.
{% endexercise %}
