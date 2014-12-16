module ACappella
  class VoiceTypeError < StandardError; end

  class VoiceType
    VALID_TYPES = {
      male:    %w(Bruce Fred Junior Ralph),
      falale:  %w(Agnes Kathy Princess Vicki Victoria),
      novelty: [
       'Albert', 'Bad News', 'Bahh', 'Bells', 'Boing', 'Bubbles', 'Cellos', 'Deranged', 'Good News', 'Hysterical', 'Pipe Organ', 'Trinoids', 'Whisper', 'Zarvox'
      ]
    }

    class << self
      def valid?(voice_type)
        types.include?(voice_type)
      end

      def default
        @default ||= types.first
      end

      def types
        @voice_types ||= VALID_TYPES.values.flatten.freeze
      end
    end
  end
end
