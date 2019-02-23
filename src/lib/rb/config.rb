#encoding: utf-8

# File: config.rb
# Language: Ruby
# Country/State: Brazil/SP
# Author : William C. Canin <http://williamcanin.com>
# Description: Script for project management.

# Class to set global variables
class Variables

  SOURCE = "."
  CONFIG = {
    'postsDir' => File.join(SOURCE, "_posts"),
    'pageDir' => File.join(SOURCE, "_pages"),
    'markdown_ext' => "md"
  }

end # End 'Variables'

class Main < Variables



    def page_create(dirPage)

          # Variables for post/blog
          abort("rake aborted: '#{CONFIG['dirPage']}' directory not found.") unless FileTest.directory?(CONFIG[dirPage])
          title_page = ENV["TITLE"]

          if title_page.nil?
            abort("You must enter the TITLE name! Aborted :(
      Example: rake post:page TITLE=\"My page\"")
          else

            slug = title_page.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')

            begin
              date_hour = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d %R:%S')
              date = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d')
            rescue => e
              puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
              exit -1
            end
            filepath = File.join("#{date}-#{slug}.#{CONFIG['markdown_ext']}")
            filename = File.join(CONFIG[dirPage], "#{slug}.#{CONFIG['markdown_ext']}")

            if File.exist?(filename)
              abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
            end

            puts "Creating new page: #{filename}"
              open(filename, 'w') do |file|
                file.puts("---")
                file.puts("layout: page")
                file.puts("title: \"#{title_page}\"")
                file.puts("date: #{date_hour}")
                file.puts("sitemap:")
                file.puts("  priority: 0.7")
                file.puts("  changefreq: 'monthly'")
                file.puts("  lastmod: #{date_hour}")
                file.puts("in_menu: true")
                file.puts("icon: # add icon Font Awesome. E.g: fa-briefcase")
                file.puts("published: false")
                file.puts("permalink: # add permilink for page. E.g: /smallparty/")
                file.puts("---")
                file.puts("")
                file.puts "<!-- Write from here your page !!! -->"
                puts "Created successfully!"
              end
          end

    end

  # How to create posts
  def post_create(dirPost)

    # Variables for post/blog
    abort("rake aborted: '#{CONFIG['dirPost']}' directory not found.") unless FileTest.directory?(CONFIG[dirPost])
    title_post = ENV["TITLE"]

    if title_post.nil?
      abort("You must enter the TITLE name! Aborted :(
Example: rake post:blog TITLE=\"My post\"")
    else

      slug = title_post.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
      begin
        date_hour = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d %R:%S')
        date = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d')
      rescue => e
        puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
        exit -1
      end
      filepath = File.join("#{date}-#{slug}.#{CONFIG['markdown_ext']}")
      filename = File.join(CONFIG[dirPost], "#{date}-#{slug}.#{CONFIG['markdown_ext']}")

      if File.exist?(filename)
        abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
      end

      puts "Creating new post: #{filename}"
        open(filename, 'w') do |file|
          file.puts("---")
          file.puts("layout: post")
          file.puts("title: \"#{title_post.gsub(/-/,' ')}\"")
          file.puts("date: #{date_hour}")
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
        end
    end

  end # End 'post_create'

end
