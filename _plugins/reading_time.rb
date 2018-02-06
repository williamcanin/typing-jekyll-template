# --------------------------------------------------------------------
#
# Plugin:       Read Time
# Description:  Outputs the reading time
# Author:       williamcanin - https://github.com/williamcanin
#
# Install:      Put into your _plugins dir in your Jekyll site
# Usage:        Read this in about {{ page.content | reading_time }}
# Example:      Read this in “about 4 minutes”
#
# --------------------------------------------------------------------
require 'json'

module Jekyll
  module ReadingTimeFilter
    def reading_time(input)

      # Loading config string languages
      config = File.read(File.join(File.dirname(File.expand_path(__FILE__)), "./.readingtimerc"))
      # Capture hash
      data_hash_json = JSON.parse(config)
      # Loading and Capture config file _config.yml
      data_hash_yml = YAML::load_file(File.join(File.dirname(File.expand_path(__FILE__)), '../_config.yml'))
      # Captures informed locale for plugin
      locale = data_hash_yml['_plugins']['reading_time']['locale']

      # Capture data
      longtext = data_hash_json[locale]['ReadingTime']['longtext']
      shorttext = data_hash_json[locale]['ReadingTime']['shorttext']
      pword = data_hash_json[locale]['ReadingTime']['pword']
      sword = data_hash_json[locale]['ReadingTime']['sword']

      # Plugin action begins
      words_per_minute = 180
      words = input.split.size;
      minutes = ( words / words_per_minute ).floor
      minutes_label = minutes == 1 ? " #{sword}" : " #{pword}"
      minutes > 0 ? "#{longtext} #{minutes} #{minutes_label}" : "#{shorttext}"

    end
  end
end
Liquid::Template.register_filter(Jekyll::ReadingTimeFilter)
