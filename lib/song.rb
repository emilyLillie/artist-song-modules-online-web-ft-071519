require 'pry'
 require_relative '../lib/concerns.rb/memorable.rb'
  require_relative '../lib/concerns.rb/findable.rb'
   require_relative '../lib/concerns.rb/paramble.rb'


class Song
  extend Memorable, Findable
  include Paramble 
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
