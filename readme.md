## Using these notes

These notes use the jekyll static site generator. Although jekyll is the system used to compile generate github pages sites, these notes won't work if you just push them to github, as they rely on a custom build plugin.

If you are using them for your own course you should do the following:

1. Fork the code61 version of the notes.
2. Clone your forked repository down onto your machine (e.g. into a `code61_notes` folder)
3. Create a new, separate deployment repository (e.g. `mycourse_site`) on github.
4. Clone your deployment repository down into a `_gh-pages` folder *inside* your `code61_notes` folder. (`_gh-pages` is ignored in the `.gitignore`, so this shouldn't cause problems.)

    git clone <mycourse_site_repo> _gh-pages

5. In your `code61_notes` folder, run `rake site:deploy`. This will
    1. Generate your site into the `_site` folder.
    2. Copy this across to the `_gh-pages` folder.
    3. Force push the contents of the `_gh-pages` folder to the `gh-pages` branch of your `mycourse_site` repo.


## Licence

These notes are licensed under a creative commons attribution license. Use and modification of the notes is encouraged (even for commercial gain) but please acknowledge me as the original creator. Pull requests will be gratefully received. Full licence details are given below.

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">The Code61 Notes</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://code61.org" property="cc:attributionName" rel="cc:attributionURL">Tom Close</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons Attribution 3.0 Unported License</a>.