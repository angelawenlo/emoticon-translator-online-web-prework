# require modules here
require 'pry'
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(file)
  # code goes here
  emoticons = YAML.load_file('lib/emoticons.yml')
  new_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, emoji|
    english, japanese = emoji
    new_hash["get_meaning"][japanese] = meaning
    new_hash["get_emoticon"][english] = japanese
  end
  new_hash
end

def get_japanese_emoticon(file, emoticons)
  # code goes here
  library = load_library(file)
  result = library["get_emoticon"][emoticon]
  binding.pry
#  load_library.each do |english, japanese|
#    if english == emoticons
#      return japanese
#    else
#     "Sorry, that emoticon was not found"
#    end
#  end
end

def get_english_meaning
  # code goes here
end
