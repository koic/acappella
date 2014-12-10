module ACappella
  class Songwriter
    def initialize(set_list)
      @set_list = set_list
    end

    def write(lyrics)
      @set_list.request(lyrics)
    end
  end
end
