# --------------------------------------------------------------------
#
# Plugin:       badge.rb
# Description:  This plugin adds bootstrap(4) labels in the skill part of the resume.
# Author:       William Canin - https://github.com/williamcanin
#
# Install:      Put into your _plugins dir in your Jekyll site
# Usage:        {% badge <content > | < size > %}
# Exemplo: {.% badge HTML|15px  %.}
# --------------------------------------------------------------------2


module Jekyll
  module Label
    class Main < Liquid::Tag
      Syntax = /^\s*([^\s]+)(?:\s+(\d+)\s+(\d+)\s*)?/
      def initialize(tag_name, input, tokens)
        super
        if input =~ Syntax then
          @input = input
        else
          raise "[badge.rb] Warning! Parameter for content not incorporated or incorrect."
        end
      end
      def render(context)
        # Split the input variable (omitting error checking)
        input_split = split_params(@input)
        skill = input_split[0].strip
        fsize = input_split[1].strip
        # Write the output HTML string
        %(<span style="font-size: #{fsize};" class="badge badge-secondary badge-plugin">#{skill}</span>)
      end
      def split_params(params)
        params.split("|")
      end
    end
  end
end
Liquid::Template.register_tag('badge', Jekyll::Label::Main)
