# File: Rakefile
# Language: Rake
# Country/State: Brazil/SP
# Author : William C. Canin
# Page author: http://williamcanin.me
# Description: Task creation file for the 'manager.rb' file.

require "./_src/lib/rb/manager.rb"

# Task create header post
# Example: rake post
desc "Create new post"
task :post do
  manager = Manager.new
  manager.post_create
end

# Task create header page
# Example: rake page
desc "Create new page"
task :page do
  manager = Manager.new
  manager.page_create
end

# Task to set up after installation
# Example: rake postinstall
desc "Setup after installation"
task :postinstall do
  manager = Manager.new
  manager.postinstall
end

# Other outputs
def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end
