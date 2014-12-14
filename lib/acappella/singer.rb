module ACappella
  class Singer
    def sing(lyrics)
      logging(lyrics)

      system('say', lyrics)
    end

    private

    def logging(lyrics)
      sung_at = Time.now.strftime('%Y-%m-%d %H:%M:%S')

      puts [sung_at, lyrics].join("\t")
    end
  end
end
