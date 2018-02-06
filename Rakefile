# File: Rakefile
# Language: RakeFile
# Country/State: Brazil/SP
# Author : William C. Canin <http://williamcanin.github.com>
# Page author: http://williamcanin.com
# Description: Task creation file for the 'config.rb' file.

LIB_DIR = "./src/lib"

require "#{LIB_DIR}/rb/config.rb"

# require "./src/lib/rb/config.rb"


# Task create header Post
# Example1: rake post TITLE="First post"
# Note: TITLE is Required
desc "Create new post"
task :post do
  confs = Main.new
  confs.post_create('postsDir')
end

# Task create header Page
# Example1: rake page TITLE="First page"
# Note: TITLE is Required
desc "Create new page"
task :page do
  confs = Main.new
  confs.page_create('pageDir')
end


# Default configuration
def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end
