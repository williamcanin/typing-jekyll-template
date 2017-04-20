# --------------------------------------------------------------------
#
# Plugin:       endpost.rb
# Description:  TAdds a line to specify the end of the post.
# Author:       William Canin - https://github.com/williamcanin
#
# Install:      Put into your _plugins dir in your Jekyll site
# Usage:        {% endpost <color> %}
# Exemplo: {.% endpost #333  %.}
# --------------------------------------------------------------------2


module Jekyll
  module Endpost
    class Main < Liquid::Tag
      Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/
      def initialize(tag_name, input, tokens)
        super
        if input =~ Syntax then
          @input = input
        else
          raise "Parameter for color not incorporated."
        end
      end
      def render(context)
        # Split the input variable (omitting error checking)
        color = @input
        # Write the output HTML string
        %(<hr style="border-top: 1px solid #{color}; color: #{color};" class="endpost">)
      end
    end
  end
end
Liquid::Template.register_tag('endpost', Jekyll::Endpost::Main)