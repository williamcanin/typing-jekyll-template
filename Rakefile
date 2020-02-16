# File name: Rakefile
# Stript type: Rake
# Country/State: Brazil/SP
# Author : William C. Canin
# Page author: http://williamcanin.me
# Description: Task creation file for the 'manager.rb' file.

require "./_src/lib/rb/manager.rb"

# Instance class
manager = Manager.new

# Task create header post
# Example: rake post
desc "Create new post"
task :post do
  manager.post_create
end

# Task create header page
# Example: rake page
desc "Create new page"
task :page do
  manager.page_create
end

# # DEPRECATED!
# # Task to set up after installation
# # Example: rake postinstall
# desc "Setup after installation"
# task :postinstall do
#   manager.postinstall
# end

# # UNDER DEVELOPMENT
# # Task to set up before installation
# # Example: rake preinstall
# desc "Setup before installation"
# task :preinstall do
#   manager.preinstall
# end

# UNDER DEVELOPMENT
## Task to deploy the compiled project
## Example: rake deploy:public
# desc "Deploy the compiled project"
# namespace :deploy do
#   task :public do
#     manager.deploy('public', 'public')
#   end
# end

# UNDER DEVELOPMENT
## Task to deploy the project source.
## Example: rake deploy:source
# desc "Deploy the project source"
# namespace :deploy do
#   task :source do
#     manager.deploy('.', 'src')
#   end
# end

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
