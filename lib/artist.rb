class Artist
    attr_accessor :name

    @@all = []
    def initialize(name)
@name = name


@@all << self
    end

def self.all
    @@all
end

def songs 
Song.all.select {|songs|songs.artist == self}
end

#new song needed arguments(name, artist, genre)
def new_song(name, genre)
Song.new(name, self, genre)
end

#artists have many genres thru songs!!
def genres
songs.map {|song|song.genre}
end



#####$
end