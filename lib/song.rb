require 'pry'
 require_relative '../lib/concerns.rb/memorable.rb'
  require_relative '../lib/concerns.rb/findable.rb'
   require_relative '../lib/concerns.rb/paramble.rb'


class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramble 
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   # @@songs << self
  #   self.class.all << self
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
