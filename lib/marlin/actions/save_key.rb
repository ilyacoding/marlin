module Marlin
  module Actions
    class SaveKey < Base
      def call(value)
        @persister.write(@key, value)
      end
    end
  end
end
