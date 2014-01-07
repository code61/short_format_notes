module Jekyll

  class SessionPage < Page
    def initialize(site, base, dir)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'session.html')
      self.data['tasks'] = get_tasks
      # load other options
      if File.exists?(File.join(base, '_sessions', dir, 'info.yml'))
        self.data.merge!(YAML.load_file(File.join(base, '_sessions', dir, 'info.yml')))
      end

      self.data['title'] ||= dir
    end

    def get_tasks
      Dir.entries(File.join(@base, '_sessions', @dir)).reject{|x| %w{. .. info.yml}.include?(x)}.reject{|x| x[0]=='_'}.sort.map do |n|
        t = TaskPage.new(@site, @base, @dir, n)
        #t.render
        t
      end
    end
    def render(*args)
      self.data['tasks'].each {|t| t.data['output'] = t.tap {|t| t.render(*args)}.output }
      super
    end

  end

  class SessionPageGenerator < Generator
    safe true

    def generate(site)
      # if we have a session template
      if site.layouts.key? 'session'
        # put in top level directory
        if Dir.exists?('_sessions')
          subdirs = Dir.entries('_sessions').reject{|x| %w{. ..}.include?(x)}
          subdirs.each do |dir_name|
            
            site.pages << SessionPage.new(site, site.source, dir_name)
          end
        end
      end
    end
  end

  # In some ways I want a TaskPage. In others I don't.
  # I definitely want something to read in individual task files and render them.
  # But in a way more akin to a blog page summary than individual pages

  # Plan: make TaskPages. Don't have a TaskPage generator. Attach TaskPages to relevant SessionPage.
  # Render them using TaskPage.content ?? Or does the content get passed in in a different way.
  # You don't call post.content ... :( ... Actually it's ok. Content does seem to be passed to liquid.
  # When does it get put into the template though?  https://github.com/mojombo/jekyll/blob/master/lib/jekyll/site.rb#L225
  # But that just calls page.render: https://github.com/mojombo/jekyll/blob/master/lib/jekyll/page.rb#L105
  # But that just goes here: https://github.com/mojombo/jekyll/blob/master/lib/jekyll/convertible.rb#L90
  # The only bit I don't want is Convertible.write https://github.com/mojombo/jekyll/blob/master/lib/jekyll/convertible.rb#L141
  # Which is called for pages, posts etc. here: https://github.com/mojombo/jekyll/blob/master/lib/jekyll/site.rb#L292
  # So what I really want it to do is allow it to render, but not be placed in the list of pages.
  # But then that has to be done manually anyway, so we're fine!

  # This doesn't seem to work. I have problems rendering the TaskPages at the right time.
  # Maybe I should merge the TaskPages into the SessionPage's payload
  # Actually I didn't have to do this. The above worked.

  class TaskPage < Page
    def initialize(site, base, dir, name)
      @site = site
      @base = base
      @dir = dir
      @name = name # won't be used

      self.process(@name) # separates into @basename and @ext
      self.read_yaml(File.join(base,'_sessions', dir), name)

      self.data['name'] = @basename
      
      # self.data['title'] = "#{category_title_prefix}#{category}" # should have title already
    end
  end



  class ExerciseTag < Liquid::Block
    # somehow access converter

    def render(context)
      # content = super
      # parsed_content = Liquid::Template.parse(content)
      # output = context.stack do 
      #   parsed_content.render(context)
      # end
      # how do I convert this thing??? 
      "<div class='exercise alert alert-info' markdown='1'><strong>Task:</strong> " +  super + "</div>"
    end
  end


end

Liquid::Template.register_tag('exercise', Jekyll::ExerciseTag)
