#encoding: utf-8

# File: config.rb
# Language: Ruby
# Country/State: Brazil/SP
# Author : William C. Canin <http://williamcanin.me>
# Description: Script for project management.

require "colorize"

class Main

    SOURCE = "."
    CONFIG = {
      'POST_DIR' => File.join(SOURCE, "_posts"),
      'PAGE_DIR' => File.join(SOURCE, "_pages"),
      'markdown_extension' => "md"
    }
    
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

    def enginer(directory, message)
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
      filename = File.join(directory, "#{date}-#{slug}.#{CONFIG['markdown_extension']}")
      if File.exist?(filename)
        abort("Action aborted by user!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
      end
      return title, date, datetime, filename
    end # enginer


    def page_create
      array = enginer(CONFIG['PAGE_DIR'], 'Enter the name for the new page (without extension):')
      puts "Creating new page: #{array[3]}".green
      open(array[3], 'w') do |file|
          file.puts("---")
          file.puts("layout: page")
          file.puts("title: \"#{array[0]}\"")
          file.puts("date: #{array[2]}")
          file.puts("sitemap:")
          file.puts("  priority: 0.7")
          file.puts("  changefreq: 'monthly'")
          file.puts("  lastmod: #{array[2]}")
          file.puts("icon: # add icon Font Awesome. E.g: fa-briefcase")
          file.puts("menu: true")
          file.puts("published: false")
          file.puts("script: []")
          file.puts("permalink: # add permilink for page. E.g: /smallparty/")
          file.puts("---")
          file.puts("")
          file.puts "<!-- Write from here your page !!! -->"
          puts "Created successfully!"
      end #open
    end # page_create

    def post_create
      array = enginer(CONFIG['POST_DIR'], 'Enter new post title (without extension):')
      puts "Creating new post: #{array[3]}"
      open(filename, 'w') do |file|
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
end # Main
