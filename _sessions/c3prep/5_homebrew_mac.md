---
title: "Ruby & Git: Better Way"
---

These instructions are for **Mac only**. On Windows the Easy Way is the Better Way.

### What's better about the Better Way?

These instructions will take you through installing Ruby and git using an OS X package manager called [Homebrew](http://mxcl.github.io/homebrew/). Once you have Homebrew set up you will be able to quickly and easily install the vast majority of the (free, open-source) software you will need as a developer. Consider this an investment for the future!

The first parts of the installation procedure is described in a post by Moncef Belyamani [here](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/). [Our Steps 1-3 correspond to their Steps 1-5. **We won't be doing their steps 6 onwards**.] If you get stuck, please check with these instructions. If you find things that don't work, let us know in the [forum](http://chat.code61.org).

### Step One: Installing Apple's Command Line Tools

Homebrew works by providing automatic recipies to download and *compile* software for your computer. In order to compile software you need a compiler. Apple provides you with a compiler but doesn't install it on OS X by default. You will need to do this for yourself. Before you do this you should check you don't have it already.

{% exercise %}
1. Open `Terminal` (e.g. from your `Application` folder)
2. Type
		
		gcc --version

3. If this says something a bit like

		i686-apple-darwin10-gcc-4.2.1 (GCC) 4.2.1 (Apple Inc. build 5666)

	you have a the gcc compiler installed and can skip to Step Two
4. If it says nothing, you need to install it.
{% endexercise %}

If you don't have a compiler already you need to install Apple's Command Line Tools - either directly or by installing XCode. The options for doing this are described in the [Railsbridge Installfest](http://installfest.railsbridge.org/installfest/install_xcode). Those options are also covered in [Moncef's post](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/) as Step 1 - note the special instructions for those on Snow Leopard.

{% exercise %}
If you don't have gcc, install it following one of the sets of instructions above.
{% endexercise %}

### Step Two: Install Homebrew

Once you have the compiler installed it should be mostly plain sailing. To install Homebrew

{% exercise %}
1. Go to the [Homebrew homepage](http://mxcl.github.io/homebrew/)
2. Scroll down until you find the 'Install Homebrew' section and follow the instructions. It should be as simple as pasting

		 ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

	into the terminal.
{% endexercise %}

If you run into any problems have a check in Step 3 of [Moncef's post](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/).

### Step Three: Install Git

{% exercise %}
1. In the terminal type:

		 brew update
		 brew install git

2. Close the terminal programme and reopen it.
3. To check it worked, in the terminal type:

    	git --version

    It should look something like this

        $ git --version
        git version 1.8.4
        $ 

    If it doesn't print out your git version you have a problem - ask in the forum!

4. Configure your git details by typing

		git config --global user.name "Your Full Name"
		git config --global user.email "Your Email Address"

	(replacing "Your Full Name" and "Your Email Address")
{% endexercise %}

### Step Four: Install rbenv

If you have a Mac, you actually already have ruby installed on your system. Unfortunately it's a really old version of ruby. As a developer it is useful to be able to have several versions of ruby on your system, so that you can switch versions between projects if necessary. [Rbenv](https://github.com/sstephenson/rbenv) (ruby environment) is a tool to help you do this.

Note: if you have ever installed RVM you will need to uninstall it as it won't play well with rbenv. If you're following these instructions you probably haven't ever installed RVM.

{% exercise %}
1. In the terminal type:

		brew install rbenv
		brew install ruby-build
		echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

2. Close the terminal and reopen it.
3. To check it worked, in the terminal type:

        rbenv --version

    It should look something like this

      $ rbenv --version
      rbenv 0.4.0
      $

{% endexercise %}

### Step Five: Install Ruby

Having installed rbenv with homebrew, we will now use rbenv to install the latest version of ruby.

{% exercise %}
1. In the terminal type:

		rbenv install 1.9.3-p392

	This will download and install ruby version 1.9.2-p392

2. Then type:

		rbenv global 1.9.3-p392
		rbenv rehash

	This will set your system to use the new version of ruby by default.

3. To check it worked, in the terminal type:

        ruby --version

    It should look something like this

      $ ruby --version
      ruby 1.9.3p448 (2013-06-27 revision 41675) [x86_64-darwin12.4.1]
      $

{% endexercise %}

### Step Six: Install Rails

Now we have the latest version of ruby, we can install rails using Rubygems. Rubygems is ruby's excellent package manager, used for sharing projects written in ruby - more on this later in the course.

{% exercise %}
1. In the terminal type:

		gem install rails
		gem install bundler

{% endexercise %}







