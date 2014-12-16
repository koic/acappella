require 'shellwords'

module ACappella
  class Singer
    def initialize(voice)
      @voice = voice || ACappella::VoiceType::default

      raise ACappella::VoiceTypeError.new("can't sing voice.") unless ACappella::VoiceType::valid?(@voice)
    end

    def sing(lyrics)
      logging(lyrics)

      shellescaped_args = [@voice, lyrics].shelljoin

      system("say -v #{shellescaped_args}")
    end

    private

    def logging(lyrics)
      sang_at = Time.now.strftime('%Y-%m-%d %H:%M:%S')

      puts [sang_at, lyrics].join("\t")
    end
  end
end
