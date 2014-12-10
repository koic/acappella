require 'drb/drb'

module ACappella
  class Client
    def initialize(uri)
      @uri = uri
    end

    def send(lyrics)
      songwriter = DRb::DRbObject.new_with_uri(@uri)

      songwriter.write(lyrics)
    rescue => e
      puts e.message
    end
  end
end
