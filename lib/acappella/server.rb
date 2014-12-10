require 'drb/drb'

module ACappella
  class Server
    def initialize(uri)
      @uri = uri

      @set_list = SetList.new

      @songwriter = Songwriter.new(@set_list)

      @singer = Singer.new
    end

    def start
      DRb.start_service(@uri, @songwriter)

      puts DRb.uri

      loop do
        if song = @set_list.next_song
          @singer.sing(song)
        end
      end
    end
  end
end
