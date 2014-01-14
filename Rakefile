desc "Commit the local site to the gh-pages branch and publish to GitHub Pages"
task :publish => ["publish:clean_gh_pages", 
                  "publish:generate_site",
                  "publish:copy_site",
                  "publish:commit_and_push"]

namespace :publish do
    # Ensure the gh-pages dir exists so we can generate into it.
  task :check_gh_pages do
    puts ""
    puts "## Checking for gh-pages dir..."
    puts "==============================="
    puts ""
    unless File.exist?("./_gh-pages")
     puts "No gh-pages directory found. You need to:"
     puts " 1. Set up a new github repository for the gh-pages site."
     puts " 2. Clone that repository into the _gh-pages directory:"
     puts ""
     puts "     git clone <repo name> _gh-pages"
     puts ""
     exit(1)
   end
 end

  task :clean_gh_pages => :check_gh_pages do
    # Copy to gh-pages dir.
    puts ""
    puts "## Removing everything from _gh-pages director (except .git and other hidden files)"
    puts "==================================================================================="
    puts ""
    Dir.glob("_gh-pages/*") do |path|
      sh "rm -rf #{path}"
    end
  end

  task :generate_site do
    puts ""
    puts "## Generating site:"
    puts "==================="
    puts ""
    puts "jekyll build"
    puts ""
    sh "jekyll build"
  end

  task :copy_site => :check_gh_pages do
    puts ""
    puts "## Copying _site to _gh-pages:"
    puts "=============================="
    puts ""
    puts "cp -R _site/* _gh-pages"
    puts ""
    sh "cp -R _site/* _gh-pages"
  end


  task :commit_and_push => :check_gh_pages do
    # Commit and push.
    puts ""
    puts "## Committing and pushing to GitHub Pages..."
    puts "============================================"
    puts ""
    sha = `git log`.match(/[a-z0-9]{40}/)[0]
    Dir.chdir('_gh-pages') do
    	sh "git add ."
      sh "git add -u"
      sh "git commit -m 'Updating to #{sha}.'"
      sh "git push -f origin master:gh-pages"
    end
    puts 'Done.'
  end
end
