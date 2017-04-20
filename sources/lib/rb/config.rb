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
    'postsDirBlog' => File.join(SOURCE, "_posts/_blog"),
    'postsDirHello' => File.join(SOURCE, "_posts/_hello"),
    'markdown_ext' => "md"
  }

end # End 'Variables'

class Main < Variables

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
      if dirPost == 'postsDirBlog'
        open(filename, 'w') do |file|
          file.puts("---")
          file.puts("layout: post")
          file.puts("title: #{title_post.gsub(/-/,' ')}")
          file.puts("date: #{date_hour}")
          file.puts("categories: blog")
          file.puts("tags: ['tag1','tag2','tag3']")
          file.puts("published: false")
          file.puts("comments: false")
          file.puts("excerpted: |
          Put here your excerpt")
          file.puts("day_quote:")
          file.puts(" title: \"Put here title quote of the day\"")
          file.puts(" content: |
          \"Put here your quote of the day\"")
          file.puts("")
          file.puts("# Does not change and does not remove 'script' variable.")
          file.puts("script: [post.js]")
          file.puts("---")
          puts "Created successfully!"
        end
      elsif dirPost == 'postsDirHello'
        open(filename, 'w') do |file|
          file.puts("---")
          file.puts("layout: default")
          file.puts("title: #{title_post.gsub(/-/,' ')}")
          file.puts("date: #{date_hour}")
          file.puts("categories: hello")
          file.puts("published: false")
          file.puts("---")
          puts "Created successfully!"
        end
      end
    end

  end # End 'post_create'

end