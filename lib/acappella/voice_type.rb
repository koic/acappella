module ACappella
  class VoiceTypeError < StandardError; end

  class VoiceType
    DEFAULT_VOICE = 'Bruce'

    FEMALE_VOICES = %w(Agnes Kathy Princess Vicki Victoria)
    MALE_VOICES = %w(Bruce Fred Junior Ralph)
    NOVELTY_VOICES = [
     'Albert', 'Bad News', 'Bahh', 'Bells', 'Boing', 'Bubbles', 'Cellos', 'Deranged', 'Good News', 'Hysterical', 'Pipe Organ', 'Trinoids', 'Whisper', 'Zarvox'
    ]

    VOICE_VARIATIONS = FEMALE_VOICES + MALE_VOICES + NOVELTY_VOICES
  end
end
