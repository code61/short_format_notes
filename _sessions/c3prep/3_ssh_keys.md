---
title: SSH keys
---

An SSH key gives you a way of connecting to a remote computer without having to type in a password everytime. In the course you will often be pushing code up to GitHub and other locations, and it can get annoying if you continually have to provide your password.

In this step we will guide you through creating an ssh key and uploading it to GitHub. This is probably the most complicated step of the installation instructions. Good luck!

GitHub itself provides excellent instructions for this step: [Github - Generating SSH Keys](https://help.github.com/articles/generating-ssh-keys). We'll be just providing a few notes to go with those instructions here.

(You might see that GitHub recommends using a different connection method: https. We're going to stick with ssh as (a) it's good to know how to set up an ssh key and (b) it avoids messing around with the credential-helper.)

### The basic overview

What we're doing basically has two steps:

1. Generate the key on your laptop
2. Upload the public part of the key to GitHub

An SSH key comes in two parts. One part is public and can be given to anyone. The other part is private and should be stored safely on your laptop (when generating the key you can and should use a passphrase to protect it). Working together the two parts can accomplish two different purposes:

* Anyone who has the public key can encrypt a message so that it can only be read using your private key.
* With your private key you can sign a message such that people with the public key can be sure you sent it.

The keys work using the <a href="http://en.wikipedia.org/wiki/RSA_(algorithm)">RSA algorithm</a>. The whole system relies on the fact that it's easy to multiply large numbers but very hard to factorize them (to undo the multiplication). At least, it will be until someone builds a quantum computer, but that's another story ...

{% exercise %}
Create and upload an SSH key to GitHub by following the [instructions on GitHub](https://help.github.com/articles/generating-ssh-keys) for your operating system.
{% endexercise %}

### Notes for Windows users

If you just ran RailsInstaller **you won't need to generate a key** - they did it for you!

You will need to do **Step 1** on the [GitHub ssh key instructions](https://help.github.com/articles/generating-ssh-keys) then continue directly to **Step 3**.

### Notes for Mac users

For some reason RailsInstaller doesn't seem to generate the key for you on a Mac. You will need to do all the steps from the [GitHub ssh key instructions](https://help.github.com/articles/generating-ssh-keys).



