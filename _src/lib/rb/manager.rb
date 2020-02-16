#encoding: utf-8

# File: manager.rb
# Language: Ruby
# Country/State: Brazil/SP
# Author : William C. Canin <http://williamcanin.me>
# Description: Script for project management.

require "colorize"
# require "open3"
require "json"
require "date"

class Manager

    SOURCE = "."
    CONFIG = {
      'ROOT_VENDOR' => File.join(SOURCE, "assets/vendor"),
      # 'BUNDLE_CONFIG_PATH' => File.join(SOURCE, ".bundle"),
      'VENDORJS_DIR' => File.join(SOURCE, "assets/vendor/js"),
      'NODE_MODULES' => File.join(SOURCE, "node_modules"),
      'POST_DIR' => File.join(SOURCE, "_posts"),
      'PAGE_DIR' => File.join(SOURCE, "_pages"),
      'PUBLIC_DIR' => File.join(SOURCE, "public"),
      'DEPLOY_JSON' => File.join(SOURCE, "_src/lib/json/deploy.json"),
      'markdown_extension' => "md"
    }

    def create_directory(path)
      unless File.directory?(path)
        puts "> Create folder '#{path}'...".blue
        FileUtils.mkdir_p(path)
        puts "> Folder '#{path}', created!".green
      end
    end # create_directory

    def copy_file(origin, destiny)
      FileUtils.cp(origin, destiny)
    end # copy_file

    ## UNDER DEVELOPMENT
    # def preinstall
    #   create_directory(CONFIG['BUNDLE_CONFIG_PATH'])
    #   if not File.exist?("#{CONFIG['BUNDLE_CONFIG_PATH']}/config")
    #     open("#{CONFIG['BUNDLE_CONFIG_PATH']}/config", 'w') do |file|
    #       file.puts("---")
    #       file.puts("BUNDLE_PATH: \"vendor/bundle\"")
    #       file.puts("BUNDLE_DISABLE_SHARED_GEMS: \"true\"")
    #     end
    #   end
    # end

    # # DEPRECATED!
    # def postinstall
    #   create_directory(CONFIG['VENDORJS_DIR'])
    #   files = ['jquery/dist/jquery.min.js',
    #             'popper.js/dist/umd/popper.min.js',
    #             'popper.js/dist/umd/popper.min.js.map',
    #             'bootstrap/dist/js/bootstrap.min.js',
    #             'bootstrap/dist/js/bootstrap.min.js.map',
    #             'simple-jekyll-search/dest/simple-jekyll-search.min.js'
    #           ]
    #   for f in files
    #     # unless File.exist?(f)
    #       copy_file("#{CONFIG['NODE_MODULES']}/#{f}", CONFIG['VENDORJS_DIR'])
    #       # puts "> File '#{f}' copied to #{CONFIG['VENDORJS_DIR']}!".green
    #     # end
    #   end
    #   puts "Postinstall done!".green
    # end # postinstall
    
    def slug_generator(parameter)
      parameter.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end # slug_generator

    def datetime_generator(parameter)
      begin
        datetime_get = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime(parameter)
      rescue => e
        puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
        exit -1
      end
    end # datetime_generator

    def enginer(directory, message, type)
      abort("Rake aborted: #{directory} directory not found.") unless FileTest.directory?(directory)
      begin
        print "#{message}\n> ".blue
        title = STDIN.gets.chomp
      rescue Interrupt => e
        puts "\nApproached by the user".yellow
        exit -1
      end
      slug = slug_generator(title)
      date = datetime_generator('%Y-%m-%d')
      datetime = datetime_generator('%Y-%m-%d %R:%S')
      if type == 'page'
        filename = File.join(directory, "#{slug}.#{CONFIG['markdown_extension']}")
      else
        filename = File.join(directory, "#{date}-#{slug}.#{CONFIG['markdown_extension']}")
      end
      if File.exist?(filename)
        abort("Action aborted by user!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
      end
      return title, date, datetime, filename
    end # enginer


    def page_create
      array = enginer(CONFIG['PAGE_DIR'], 'Enter the name for the new page:', 'page')
      puts "Creating new page: #{array[3]}".green
      open(array[3], 'w') do |file|
        file.puts("---")
        file.puts("layout: page")
        file.puts("order: #number")
        file.puts("title: \"#{array[0]}\"")
        file.puts("date: #{array[2]}")
        file.puts("sitemap:")
        file.puts("  priority: 0.7")
        file.puts("  changefreq: 'monthly'")
        file.puts("  lastmod: #{array[2]}")
        file.puts("# Use icons of: https://fontawesome.com/icons")
        file.puts("# E.g: fa-briefcase")
        file.puts("icon: ")
        file.puts("menu:")
        file.puts("  enable: true")
        file.puts("  local: [default]")
        file.puts("script: []")
        file.puts("published: false")
        file.puts("permalink: # add permilink for page. E.g: /smallparty/")
        file.puts("---")
        file.puts("")
        file.puts "<!-- Write from here your page !!! -->"
        puts "Created successfully!"
      end #open
    end # page_create

    def post_create
      array = enginer(CONFIG['POST_DIR'], 'Enter new post title:', 'post')
      puts "Creating new post: #{array[3]}"
      open(array[3], 'w') do |file|
        file.puts("---")
        file.puts("layout: post")
        file.puts("title: \"#{array[0]}\"")
        file.puts("date: #{array[2]}")
        file.puts("tags: ['tag1','tag2','tag3']")
        file.puts("published: false")
        file.puts("comments: false")
        file.puts("excerpted: |
        Put here your excerpt")
        file.puts("day_quote:")
        file.puts(" title: \"Put here title quote of the day\"")
        file.puts(" description: |
        \"Put here your quote of the day\"")
        file.puts("")
        file.puts("# Does not change and does not remove 'script' variable.")
        file.puts("script: [post.js]")
        file.puts("---")
        file.puts("")
        file.puts "<!-- Write from here your post !!! -->"
        puts "Created successfully!"
      end # open
    end # post_create

    ## UNDER DEVELOPMENT
    # def deploy(dir, head)
    #   datetime = DateTime.now
    #   deploy_json = open(CONFIG['DEPLOY_JSON'])
    #   parsed = JSON.parse(deploy_json.read)

    #   begin
    #     if parsed[head]['git']['init'] == false
    #       create_git_init = """
    #       cd #{dir}; git init
    #       """
    #       # Open3.popen3(create_git_init)
    #       system(create_git_init)
    #       parsed[head]['git']['init'] = true
    #       File.write(CONFIG['DEPLOY_JSON'], JSON.pretty_generate(parsed))
    #     end

    #     if parsed[head]['git']['origin'] == "" and 
    #       parsed[head]['git']['remote'] == ""
    #       print "Enter the origin:\n> ".blue
    #       origin = STDIN.gets.chomp

    #       print "Enter the remote address:\n> ".blue
    #       remote = STDIN.gets.chomp
          
    #       add_remote = """
    #         cd #{dir}; git remote add #{origin} #{remote}
    #       """

    #       # Open3.popen3(add_remote)
    #       system(add_remote)
          
    #       parsed[head]['git']['origin'] = origin
    #       parsed[head]['git']['remote'] = remote
    #       File.write(CONFIG['DEPLOY_JSON'], JSON.pretty_generate(parsed))

    #     end

    #     commit = """
    #       cd #{dir}; git add .; git commit -m \"Update - #{datetime}\"
    #     """
    #     # Open3.popen3(commit)
    #     system(commit)

    #     if parsed[head]['git']['branch'] == ""
    #       print "Add branch:\n> ".blue
    #       branch = STDIN.gets.chomp
            
    #       add_branch = """
    #         cd #{dir}; git checkout -b #{branch}
    #       """
    #       # Open3.popen3(add_branch)
    #       system(add_branch)
    #       parsed[head]['git']['branch'] = branch
    #       File.write(CONFIG['DEPLOY_JSON'], JSON.pretty_generate(parsed))
    #     end

    #     push_origin = parsed[head]['git']['origin']
    #     push_branch = parsed[head]['git']['branch']
    #     push_start = """
    #     cd #{dir}; git push #{push_origin} #{push_branch}
    #     """
    #     system(push_start)
    #     # Open3.popen3(push_start)
    #     puts "Deploy, Done!".green
      
    #   rescue Interrupt => e
    #     puts "\nApproached by the user".yellow
    #     exit -1
    #   end # begin

    # end # deploy

end # Main
