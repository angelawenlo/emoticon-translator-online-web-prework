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
  load_library = load_library(file)
  load_library["get_emoticon"].each do |english, japanese|
    if english.include?(emoticons)
      puts japanese
    end
  end
end

def get_english_meaning
  # code goes here
end
