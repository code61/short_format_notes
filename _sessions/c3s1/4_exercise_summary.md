---
title: Exercise summary
---

{% highlight ruby %}
> x = 1
=> 1
> x = x + 1
=> 2
{% endhighlight %}

This might seem really obvious, but it's worth pointing out: `=` is an assignment operator; it means 'set name on the left equal to the value on the right'. It isn't the same equals as you see in maths! In maths `x = x + 1` doesn't really make sense -it's an equation with no (finite) solutions. In ruby `x = x + 1` makes perfect sense - just set `x` to be one more than it was before.

{% highlight ruby %}
b = "hello"
c = b.capitalize

b #=> "hello"
c #=> "Hello"

d = "hello" 
e = d.capitalize!

d #=> "Hello"
e #=> "Hello"
{% endhighlight %}

This example is pretty important. In the first case `capitalize` gives back "HELLO", but leaves the original string untouched. 

<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   width="153.667px" height="96.666px" viewBox="0 0 153.667 96.666" enable-background="new 0 0 153.667 96.666"
   xml:space="preserve">
<rect x="8.667" y="9" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="27" height="27"/>
<text transform="matrix(1 0 0 1 19.1484 26)" font-family="'MyriadPro-Regular'" font-size="12">b</text>
<text transform="matrix(1 0 0 1 92.667 27)" font-family="'MyriadPro-Regular'" font-size="12">“hello”</text>
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="35.667" y1="23" x2="73.606" y2="23"/>
    <g>
      <polygon points="80.667,23 70.718,27.065 73.079,23 70.718,18.936      "/>
    </g>
  </g>
</g>
<rect x="6.89" y="56.807" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="27" height="27"/>
<text transform="matrix(1 0 0 1 19.1484 73.8071)" font-family="'MyriadPro-Regular'" font-size="12">c</text>
<text transform="matrix(1 0 0 1 90.8896 74.8071)" font-family="'MyriadPro-Regular'" font-size="12">“Hello”</text>
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="33.89" y1="70.807" x2="71.829" y2="70.807"/>
    <g>
      <polygon points="78.89,70.807 68.94,74.873 71.301,70.807 68.94,66.743       "/>
    </g>
  </g>
</g>
<path fill="none" stroke="#F7941E" stroke-width="3" stroke-miterlimit="10" d="M136.333,24c0,6.627-5.373,12-12,12H94.667
  c-6.627,0-12-5.373-12-12v-2.5c0-6.627,5.373-12,12-12h29.667c6.627,0,12,5.373,12,12V24z"/>
<path fill="none" stroke="#F7941E" stroke-width="3" stroke-miterlimit="10" d="M143.667,72c0,6.627-5.373,12-12,12h-39
  c-6.627,0-12-5.373-12-12v-3c0-6.627,5.373-12,12-12h39c6.627,0,12,5.373,12,12V72z"/>
</svg>

In the second case, we use the in-place version of `captialize!`. It changes the actual string that `d` is pointing to, and sets `e` to point there too. In ruby, methods often come in two flavours like this, with the `!` version modifying the original object in place. You could also try out `reverse/reverse!` and `upcase/upcase!`.

<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
   width="153.667px" height="96.666px" viewBox="0 0 153.667 96.666" enable-background="new 0 0 153.667 96.666"
   xml:space="preserve">
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="35.667" y1="23" x2="72.718" y2="23"/>
    <g>
      <polygon points="79.778,23 69.829,27.065 72.19,23 69.829,18.936       "/>
    </g>
  </g>
</g>
<g>
  <g>
    <line fill="none" stroke="#000000" stroke-miterlimit="10" x1="33.89" y1="70.807" x2="76.081" y2="36.457"/>
    <g>
      <polygon points="81.556,31.999 76.407,41.433 75.671,36.79 71.274,35.129       "/>
    </g>
  </g>
</g>
<rect x="8.667" y="9" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="27" height="27"/>
<text transform="matrix(1 0 0 1 19.1484 26)" font-family="'MyriadPro-Regular'" font-size="12">d</text>
<rect x="6.89" y="56.807" fill="none" stroke="#939598" stroke-width="3" stroke-miterlimit="10" width="27" height="27"/>
<text transform="matrix(1 0 0 1 19.1484 73.8071)" font-family="'MyriadPro-Regular'" font-size="12">e</text>
<text transform="matrix(1 0 0 1 91.7783 26.8066)" font-family="'MyriadPro-Regular'" font-size="12">“Hello”</text>
<path fill="none" stroke="#F7941E" stroke-width="3" stroke-miterlimit="10" d="M144.556,24c0,6.627-5.373,12-12,12h-39
  c-6.627,0-12-5.373-12-12v-3c0-6.627,5.373-12,12-12h39c6.627,0,12,5.373,12,12V24z"/>
</svg>


{% highlight ruby %}
> name = "Dave"
=> "Dave"
> f = "Hello #{name}! "
=> "Hello Dave! "
> f
=> "Hello Dave! "
> name = "Sarah"
=> "Sarah"
> f
=> "Hello Dave! "
{% endhighlight %}

The above shows that *string interpolation happens when you write it down*. When you first write `f = "Hello #{name}! "` ruby immediately looks up `name` and bakes it straight into the string. Setting `name` to something differeny later on, won't change this.

<small markdown="1">In the extra challenge, the expression gave an iterative approximation to sqrt(2). You can tell by rearranging and solving the equation, that any fixed point must be a sqrt of 2. In the final part, by giving it `x=1` you forced ruby to do integer arithmetic. If you're into that sort of thing, you might like to try and find the fixed points in this case!</small>