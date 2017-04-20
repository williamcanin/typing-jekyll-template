# --------------------------------------------------------------------
#
# Plugin:       fa.rb
# Description:  This plugin adds Awesome Font icons.
# Author:       William Canin - https://github.com/williamcanin
#
# Install:      Put into your _plugins dir in your Jekyll site
# Usage:        {% fa <class Font-awesome icon > | < size > %}
# Exemplo: {.% fa fa-user|15px  %.}
# --------------------------------------------------------------------2


module Jekyll
  module Fa
    class Main < Liquid::Tag
      Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/
      def initialize(tag_name, input, tokens)
        super
        if input =~ Syntax then
          @input = input
        else
          raise "Parameter for icon not incorporated."
        end
      end
      def render(context)
        # Split the input variable (omitting error checking)
        input_split = split_params(@input)
        icon = input_split[0].strip
        fsize = input_split[1].strip
        # Write the output HTML string
        %(<i style="font-size: #{fsize};" class="fa #{icon}" aria-hidden="true"></i>)
      end
      def split_params(params)
        params.split("|")
      end
    end
  end
end
Liquid::Template.register_tag('fa', Jekyll::Fa::Main)