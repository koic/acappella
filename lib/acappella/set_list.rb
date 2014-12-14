module ACappella
  class SetList
    def initialize
      @songs = []
    end

    def request(song)
      @songs << song
    end

    def next_song
      @songs.shift
    end
  end
end
