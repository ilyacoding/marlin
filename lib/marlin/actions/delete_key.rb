module Marlin
  module Actions
    class DeleteKey < Marlin::Action
      def call
        @persister.delete(@key)
      end
    end
  end
end
