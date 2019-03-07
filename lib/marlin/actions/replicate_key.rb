module Marlin
  module Actions
    class ReplicateKey < Base
      def call
        @persister.read(@key)
      end
    end
  end
end
