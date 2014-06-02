---
title: Exercise answers
---

    1. How many athletes were there?
    2. How many women? How many men?
    3. Who was the oldest athlete?
    4. Who was the youngest?
    4. How many people won at least 1 gold?
    5. What was the average age? (Your answer should have decimal places..)
    6. Who got the most golds?
    7. Who was the 10th oldest athlete?


{% highlight ruby %}
Athlete.count
#=> 10384 

Athlete.where(:sex=>"M").count
#=> 5756 

Athlete.where(:sex=>"F").count
#=> 4628 

Athlete.order_by(:age.desc).first.name
#=> "Hiroshi Hoketsu" 

Athlete.order_by(:age.desc).last.name
#=> "Adzo Kpossi" 

Athlete.where(:gold.gt => 0).count
#=> 162 
 
Athlete.sum(:age)/Athlete.count.to_f
#=> 26.06885593220339

Athlete.order_by(:gold.desc).limit(11).each do |a|
   puts a.name
   puts a.gold
end
#=>Yannick Agnel
#=>2
#=>Bo Bae Ki
#=>2
#=>Elisa Di Francisca
#=>2
#=>Gabrielle Douglas
#=>2
#=>Missy Franklin
#=>2
#=>Michael Jung
#=>2
#=>Ryan Lochte
#=>2
#=>Michael Phelps
#=>2
#=>Allison Schmitt
#=>2
#=>Dana Vollmer
#=>2
#=>Shiwen Ye
#=>2

 Athlete.order_by(:age.desc)[9].name
 => "Irada Ashumova" 

{% endhighlight %}
