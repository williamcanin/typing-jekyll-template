# --------------------------------------------------------------------
#
# Plugin:       Imager
# Description:  Adds an Image using bootstrap class to responsive.
# Author:       William Canin
#
# Install:      Put into your _plugins dir in your Jekyll site
# Usage:        Add in post: {% imager your_image.(png|jpg|bmp)|<left|right|center> %}
#
# --------------------------------------------------------------------
require 'fileutils'

module Jekyll
  module Imager
    class Main < Liquid::Tag
      # Defining syntax
      Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/
      # Method for picking up the _config.yml
      def _get_config_yml
        # Capture the settings of the _config.yml file
        config_yml = YAML::load_file(File.join(File.dirname(File.expand_path(__FILE__)), '../_config.yml'))
        # Add some of these settings to variables
        @url_website = config_yml['baseurl']
        @get_dir_img_posts = config_yml['_plugins']['imager']['dir_posts']
      end
      def initialize(tag_name, input, tokens)
        super
        if input =~ Syntax then
          @input = input
        else
          raise "Warning! No image was inserted in the plugin!"
        end
        # Using _config.yml configuration settings capture method at startup
        _get_config_yml
        # After obtaining all information from the _config.yml file, create the directory where the images will be (if it does not exist).
        dir_posts_verify = File.join("./", @get_dir_img_posts)
        unless File.directory?(dir_posts_verify)
          FileUtils.mkdir_p(dir_posts_verify)
        end
      end
      def render(context)
        # Loading the settings you have obtained.
        _get_config_yml
        # Split the input variable (omitting error checking)
        input_split = split_params(@input)
        img = input_split[0].strip
        align = input_split[1].strip

        # Creating the structure for image layout. Using Bootstrap.
        if align == "center"
          %(<div class="row imager" style="margin: 40px 0px;">
            <img class="img-fluid mx-auto d-block" src="#{@url_website}/#{@get_dir_img_posts}/#{img}" title="#{img}" alt="#{img}">
          </div>)
         else
          %(<img style="float: #{align};" class="img-fluid" src="#{@url_website}/#{@get_dir_img_posts}/#{img}" title="#{img}" alt="#{img}">)
         end
      end
      def split_params(params)
        params.split("|")
      end
    end
  end
end
# Register tag
Liquid::Template.register_tag('imager', Jekyll::Imager::Main)
