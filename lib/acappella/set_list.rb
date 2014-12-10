module ACappella
  class SetList
    def initialize
      @songs = []
    end

    def request(lyrics)
      @songs << lyrics
    end

    def next_song
      @songs.shift
    end
  end
end
