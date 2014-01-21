---
title: Meet the Command Line
---

The command line is a way to interact with your computer programmatically. If you are doing any software development you will need to get to grips with using the command line, as many of the programs you will use will be run from the it, instead of by clicking an icon.

Note: when giving you instructions for the command line we will precede them with a `$` to represent the command prompt e.g.

    $ some_command

**You shouldn't type the `$` sign - just the stuff after it.** So for the above instruction you would just type `some_command` into the command line.


### Moving around

The first thing you will need to get used to is moving around. Start by printing the name of the directory you are in:

    $ pwd

Then have a look at what's in that directory ( _list_ the contents):

    $ ls

To move up a directory ( _change directory_ ) do

    $ cd ..

To move back into the folder you just left do

    $ cd name_of_the_folder

Your commandline will help you: <kbd>tab</kbd> can often be used to auto-complete names of files, the up arrow can be used to cycle through previous commands that you have typed.

### Creating a directory

You can do a lot more on the command line than just move around. We'll be using the command line a lot over the course. For the time being we just need to create a folder:

    $ mkdir coding_course

Note: choosing names without spaces makes command line navigation easier.

{% exercise %}
1. Open your command line:
    * On a Mac open Terminal (Applications > Terminal)
    * On Windowns open Command Prompt with Ruby on Rails
2. Find out where you are:

        $ pwd

3. See what is in the same folder:

        $ ls

4. If you are on a Mac move into `Documents`:

        $ cd Documents

5. Create the folder for the coding course:

        $ mkdir coding_course

6. Move into that folder:

        $ cd coding_course

7. Move back up to the folder above

        $ cd ..

8. Move back into the coding course folder. This time don't type out coding_course - just type out the first few letters and hit `Tab`:

       $ cd coding_course

9. In the Finder (Mac) or My Computer (Windows) find the folder that you just created.
{% endexercise %}