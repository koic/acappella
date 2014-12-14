require 'drb/drb'
require 'uri'

module ACappella
  class Client
    def initialize(options = {})
      host = options[:host] || 'localhost'
      port = options[:port] || '8989'

      uri = URI.parse("druby://#{host}:#{port}").to_s

      puts "Connect to #{uri}"
      puts 'Run `acappella-client --help` for more startup options'

      @songwriter = DRb::DRbObject.new_with_uri(uri)
    end

    def send(lyrics)
      @songwriter.write(lyrics)
    rescue => e
      puts e.message
    end
  end
end
