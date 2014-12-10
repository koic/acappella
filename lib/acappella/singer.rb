module ACappella
  class Singer
    def sing(lyrics)
      system("say -v Ralph '#{lyrics}'")
    end
  end
end
