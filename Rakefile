# File: Rakefile
# Language: RakeFile
# Country/State: Brazil/SP
# Author : William C. Canin <http://williamcanin.github.com>
# Page author: http://williamcanin.com
# Description: Task creation file for the 'config.rb' file.

require './sources/lib/rb/config.rb'


# Task create header Post
# Example1: rake post:blog TITLE="First post"
# Example2: rake post:hello TITLE="Hello"
# Note: TITLE is Required
desc "Create new post"
namespace :post do
  task :blog do
    confs = Main.new
    confs.post_create('postsDirBlog')
  end
  task :hello do
    confs = Main.new
    confs.post_create('postsDirHello')
  end
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