require 'pry'
 require_relative '../lib/concerns.rb/memorable.rb'
 require_relative '../lib/concerns.rb/findable.rb'
 require_relative '../lib/concerns.rb/paramble.rb'
 


class Artist
  extend Memorable::ClassMethods, Findable 
  include Memorable::InstanceMethods, Paramble
  
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # @@artists << self
    # self.class.all << self
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
