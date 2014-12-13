require 'optparse'

module ACappella
  class OptionParser
    def self.parse(argv)
      opt = ::OptionParser.new

      options = {
        host: 'localhost',
        port: '8989'
      }

      opt.on('-h', '--host=VAL') {|v| options[:host] = v }
      opt.on('-p', '--port=VAL') {|v| options[:port] = v }

      opt.parse!(argv)

      options
    rescue ::OptionParser::MissingArgument => e
      puts opt.help

      raise e
    end
  end
end
