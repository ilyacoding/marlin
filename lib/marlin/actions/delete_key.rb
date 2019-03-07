module Marlin
  module Actions
    class DeleteKey < Base
      def call
        @persister.delete(@key)
      end
    end
  end
end
