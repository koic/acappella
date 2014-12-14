require 'drb/drb'
require 'uri'

module ACappella
  class Server
    def initialize(options = {})
      host = options[:host] || 'localhost'
      port = options[:port] || '8989'

      @uri = URI.parse("druby://#{host}:#{port}").to_s

      @set_list = SetList.new

      @songwriter = Songwriter.new(@set_list)

      @singer = Singer.new
    end

    def start
      @server = DRb.start_service(@uri, @songwriter)

      puts "acappella #{ACappella::VERSION} starting on #{DRb.uri}"
      puts "Run `acappella-server --help` for more startup options"

      Signal.trap(:INT) do
        puts; puts('Stopping ...')

        @server.stop_service

        puts('Exiting ...'); exit(false)
      end

      puts 'Ctrl-C to shutdown server'

      loop do
        if song = @set_list.next_song
          @singer.sing(song)
        end
      end
    end
  end
end
