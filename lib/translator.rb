# require modules here
require 'pry'
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(info)
  # code goes here
  emoticons = YAML.load_file('lib/emoticons.yml')

  new_hash = {
    "get_meaning" => {"emoticons"},
    "get_emoticon" => []
  }

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
