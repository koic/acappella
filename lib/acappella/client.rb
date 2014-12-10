require 'drb/drb'

module ACappella
  class Client
    def initialize(uri)
      @uri = uri
    end

    def send(lyrics)
      singer = DRb::DRbObject.new_with_uri(@uri)

      singer.sing(lyrics)
    end
  end
end
