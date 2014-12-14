module ACappella
  class Singer
    def sing(lyrics)
      logging(lyrics)

      system('say', lyrics)
    end

    private

    def logging(lyrics)
      sang_at = Time.now.strftime('%Y-%m-%d %H:%M:%S')

      puts [sang_at, lyrics].join("\t")
    end
  end
end
