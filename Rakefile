namespace :site do
	desc "Commit the local site to the gh-pages branch and publish to GitHub Pages"
	task :publish do
    # Ensure the gh-pages dir exists so we can generate into it.
    puts "Checking for gh-pages dir..."
    unless File.exist?("./_gh-pages")
    	puts "No gh-pages directory found. Run the following commands first:"
    	puts "  `git clone <repo name> _gh-pages"
    	puts "  `cd _gh-pages"
    	puts "  `git checkout gh-pages`"
    	exit(1)
    end

    # Ensure gh-pages branch is up to date.
    Dir.chdir('_gh-pages') do
    	sh "git pull origin gh-pages"
    end

    # Copy to gh-pages dir.
    puts "Removing everything except .gitignore"
    Dir.glob("_gh-pages/*") do |path|
    	next if path == ".gitignore"
        sh "rm -rf #{path}"
    end
    sh "cp -R _site/* _gh-pages"

    # Commit and push.
    puts "Committing and pushing to GitHub Pages..."
    sha = `git log`.match(/[a-z0-9]{40}/)[0]
    Dir.chdir('_gh-pages') do
    	sh "git add ."
        sh "git add -u"
    	sh "git commit -m 'Updating to #{sha}.'"
    	sh "git push origin gh-pages"
    end
    puts 'Done.'
end
end