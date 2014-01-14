---
title: Names & Variables
---

So far we've used irb as a clever calculator, by working with values directly. Programming becomes a lot more powerful when you're able to give values **names**.

A **name** is just something that you can use to refer to a value. In ruby you create a name by using the assignment operator, `=`.

{% highlight ruby %}
age = 5
{% endhighlight %}


<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   width="153.012px" height="44.94px" viewBox="0 0 153.012 44.94" enable-background="new 0 0 153.012 44.94" xml:space="preserve">
<rect x="10.783" y="9" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="54" height="27"/>
<text transform="matrix(1 0 0 1 27.7832 26)" font-family="'MyriadPro-Regular'" font-size="12">age</text>
<circle fill="none" stroke="#F7941E" stroke-width="3" stroke-miterlimit="10" cx="123.283" cy="22.5" r="13.5"/>
<text transform="matrix(1 0 0 1 119.7832 27)" font-family="'MyriadPro-Regular'" font-size="12">5</text>
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="64.783" y1="23" x2="102.723" y2="23"/>
    <g>
      <polygon points="109.783,23 99.834,27.065 102.195,23 99.834,18.936      "/>
    </g>
  </g>
</g>
</svg>


You can change the value associated with a name at any point. It doesn't even have to be the same type of value as the first value assigned to the name. Here we change the value associated with `age` to a string:

{% highlight ruby %}
age = "almost three"
{% endhighlight %}

<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   width="215.663px" height="44.94px" viewBox="0 0 215.663 44.94" enable-background="new 0 0 215.663 44.94" xml:space="preserve">
<rect x="10.783" y="9" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="54" height="27"/>
<text transform="matrix(1 0 0 1 27.7832 26)" font-family="'MyriadPro-Regular'" font-size="12">age</text>
<text transform="matrix(1 0 0 1 121.7832 27)" font-family="'MyriadPro-Regular'" font-size="12">“almost three”</text>
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="64.783" y1="23" x2="102.723" y2="23"/>
    <g>
      <polygon points="109.783,23 99.834,27.065 102.195,23 99.834,18.936      "/>
    </g>
  </g>
</g>
<path fill="none" stroke="#F7941E" stroke-width="3" stroke-miterlimit="10" d="M208.434,24c0,6.627-4.636,12-10.356,12h-77.938
  c-5.72,0-10.356-5.373-10.356-12v-3c0-6.627,4.636-12,10.356-12h77.938c5.72,0,10.356,5.373,10.356,12V24z"/>
</svg>

## Types of name

There are various different types of name in ruby:

* **local variables** e.g. `age`: Local variables begin with a lower-case letter. They're all we'll be using for now.
* **constants** e.g. `PI`: Any name that starts with a capital letter is deemed to be a constant. Ruby will complain if you try to change its value at a later date.
* **instance variables** e.g. `@name`: Instance variables start with a single `@` sign. They're used to store values inside objects. More later.
* **class variables** e.g. `@@count`: Class variables start with two `@@` signs. They're used to store values relevant to a set of objects. More on this later too.
* **global variables** e.g. `$last_error`: Global variables start with a `$` sign. They're available anywhere in your program. Relying on global variables is normally a bad idea.

For the moment, we will just be using local variables. The important thing to take from the above tables is that **local variables must start with a lower-case letter**.

## String interpolation

String interpolation is a way of taking a variable and putting it inside a string.

To write a string in ruby you can either use `'` or `"`.

{% highlight ruby %}
string1 = 'hello'
string2 = "hello"
{% endhighlight %}

In the code above, string1 and string2 are exactly the same. The difference between `'` and `"` is that `"` allows you to do **string interpolation**:

{% highlight ruby %}
age = 5
age_description = "My age is #{age}."
=> "My age is 5."
{% endhighlight %}

Any ruby expression inside the `#{ }` will be evaluated and inserted into the string. Here we gave it the variable `age`, which points to the value `5`. As `5` is a value it evaluates to itself, so 5 is inserted into the string.

{% exercise %}
1. With your partner, decide what each of the following instructions will do. Test to see if you're right in irb.

{% highlight ruby %}
a = 1

a

a+1

a

a = a + 1

a

b = "hello"

b

b.capitalize

b

b = b.capitalize

c = "hello"

c.capitalize!

c

name = "Dave"

d = "Hello #{name}! "

d

name = "Sarah"

d

d * 5
{% endhighlight %}

{% endexercise %}
{% exercise %}
2. (Extension for pairs who finish early.)[Note: this exercise has a lot more to do with maths than programming. If you don't get it don't worry!]

    Consider the expression
    ```
    x = (2 + 5*x - x**2)/5
    ```
    1. Let `x = 1.1`
    2. Write `x = (2 + 5*x - x**2)/5` and then evaluate this multiple times (using the up arrow in irb)
    3. What happens? Can you explain why?
    4. Let `x = 1` and do the same thing. What happens and why? 

{% endexercise %}
