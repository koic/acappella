module ACappella
  class Singer
    def sing(lyrics)
      system('say', lyrics)
    end
  end
end
