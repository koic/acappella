require 'optparse'

module ACappella
  class OptionParser
    def initialize
      @opt = ::OptionParser.new

      @options = {}

      @added_options = []
    end

    def add_option(short, long, desc = '')
      @added_options << [short, long, desc]
    end

    def parse!(argv)
      @opt.on('-h', '--host=VAL') {|v| @options[:host] = v }
      @opt.on('-p', '--port=VAL') {|v| @options[:port] = v }

      @added_options.each do |added_option|
        short, long, desc = added_option

        @opt.on(short, long, desc) {|v| @options[:voice] = v }
      end

      @opt.parse!(argv)

      @options
    rescue ::OptionParser::MissingArgument => e
      puts @opt.help

      raise e
    end
  end
end
