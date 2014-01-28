---
title: More conditionals
---

### If, elsif, else

{% highlight ruby %}
if age < 1
	type = "baby"
elsif age < 3
	type = "infant"
elsif age < 13
	type = "child"
elsif age < 20
	type = "teenager"
else
	type = "adult"
end
{% endhighlight %}

### Case statement

The case statement (called a switch statement in many other languages) is used for testing multiple conditions, when `if ... elsif .. else` would become unweildy.

{% highlight ruby %}
print "Enter your favourite programming language: "
language = gets.chomp

case language.upcase
when "Ruby"
	puts "Great choice"
when "Python"
	puts "Not bad. You should try Ruby though"
when "Javascript"
	puts "Javascript is a necessary 
	evil, but not nearly as nice as ruby"
else
	puts "Ruby is better!"
end
{% endhighlight %}

{% exercise %}
1. Open `grade.rb` in Sublime Text
2. Complete the function using `if`, `elsif` and `else` statements
3. Check your solution by running `test_grade.rb`
{% endexercise %}