## Running a course using these notes

If you are using these notes to run a course, we recommend that you host a copy yourself. The easiest way to do this is to use github pages and follow the instructions below.

## Downloading the notes: fork first!

We recommend that you fork the [code61 repository](https://github.com/code61/short_format_notes) and then clone your fork, instead of cloning the code61 repository directly. This helps us see how the notes are being used and makes it easier to incorporate any modifications you make back into the central version.

## Viewing the notes locally

The notes use the [jekyll](http://jekyllrb.com/) static site generator. You can will need to install this dependency before building the notes locally:

    gem install jekyll

Once you have jekyll installed you can build and view the notes by running:

    jekyll serve

## Publishing to github pages

Although jekyll is the system used to compile and generate github pages sites, these notes won't work if you just push them to github as they rely on a custom build plugin (so that files in the `_sessions` folder compile correctly). Instead you need to generate the html version of the site locally.

The general idea is

1. Have a separate deployment repo, whose sole purpose is to serve the github pages version of the site.
2. Build the site locally.
3. Copy this build into a gitignored `_gh-pages` directory inside the project.
4. Push this directory to the deployment repo.

We've provided a rake task to make this workflow easier, but it requires that you set things up correctly first.

### Setup

1. Create a new, separate deployment repository (e.g. [oxford_code61_notes](https://github.com/tomclose/oxford_code61_notes)) on github.
2. Clone this deployment repository down into a `_gh-pages` folder *inside* your the notes folder.

        git clone <mycourse_site_repo> _gh-pages

### Publishing the notes

To publish the notes (in the root of the project) run:

    rake publish

This will check your setup, build the notes, copy them into the `_gh-pages` directory and add, commit and (force) push them to the gh-pages branch of your deployment repo.

## Deploying to a custom url

Using a custom url should be straightforward - just add a CNAME at the root level of the project and deploy as normal. (The CNAME is gitignored on the main repo, but not in the _gh-pages sub-repo, so this should all be fine.)

## Updating the notes

Assuming that you started with your own fork of the code61 repo, to update the notes you will need to pull from the original code61 central version of the repo. To do this you need to have first set up code61 as a remote:

    git remote add code61 git@github.com:code61/short_format_notes.git

You can then update the notes by running:

    git pull code61

## Contributing

To contribute, push up to your fork and submit a pull request!

## Licence

These notes are licensed under a creative commons attribution license. Use and modification of the notes is encouraged (even for commercial gain) but please acknowledge me as the original creator. Pull requests will be gratefully received. Full licence details are given below.

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">The Code61 Notes</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://code61.org" property="cc:attributionName" rel="cc:attributionURL">Tom Close</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons Attribution 3.0 Unported License</a>.
