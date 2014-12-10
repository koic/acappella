require 'drb/drb'

module ACappella
  class Server
    def initialize(uri)
      @uri = uri
    end

    def start
      singer = Singer.new

      DRb.start_service(@uri, singer)

      puts DRb.uri

      DRb::thread.join
    end
  end
end
