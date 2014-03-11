---
title: Changing attributes
---

So far we've just seen attributes that have been set when the class is **instantiated**. It's also possible to update attributes throughout the lifecycle of the object. Have a look at the following code:

{% highlight ruby %}
class Child
  def initialize(age)
    @age = age
  end

  def age
    @age
  end

  def age=(new_age)
    @age = new_age
  end

  def have_birthday
    @age = @age + 1
    "You are now #{@age} years old!"
  end
end
{% endhighlight %}

It can be used as follows:

{% highlight ruby %}
c = Child.new(5)
c.age #=> 5

c.age = 6
c.age #=> 6

c.have_birthday #=> "You are now 7 years old!"
c.age #=> 7
{% endhighlight %}

{% exercise %}
Update your solution in `person.rb` to allow the `first_name` and `last_name` to be set independently, and have the `name` update accordingly:
{%highlight ruby %}
p = Person.new({:name => "Bart Simpson", :dob => "15/1/1990"})

p.name #=> "Bart Simpson"

p.first_name = "Bartholomew"
p.name #=> "Bartholomew Simpson"
{% endhighlight %}
You might need to make changes to which attributes your class stores, to make this work.

Test your work by running `rspec spec/person_update_spec.rb`.
{% endexercise %}