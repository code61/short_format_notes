---
title: Ruby and Git
---

In order to save to github you'll need a program called git on your
laptop. To make git easier we'll be using a program called gitgit.
To run gitgit you need ruby installed, so in this step we'll install
that too.

### On Windows

On Windows the guys at [Rails Installer](http://railsinstaller.org/en) have put together a single package that contains both ruby and git. We're going to use that to get both on your laptop.

{% exercise %}
If you are on Windows:
* Download and install [Rails Installer](http://railsinstaller.org/en)
{% endexercise %}

### On a Mac

Macs come with ruby already installed, so you don't have to worry about
getting ruby!

To install git we're going to use a tool called [Homebrew](http://brew.sh/), which helps install open source software to a mac.

{% exercise %}
* Open `Terminal` (Applications > Utilities > Terminal).
* Follow the installation instructions on the [Homebrew site](http://brew.sh/). It will ask you to copy and paste something like

<pre><code>
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
</code></pre>

into the Terminal. (You should check this, as the precise
    instructions  might have changed.)

* Once homebrew in installed type the following into the Terminal:

        brew install git
{% endexercise %}
