module Marlin
  module Actions
    class ReadKey < Base
      def call
        @persister.read(@key)
      end
    end
  end
end
