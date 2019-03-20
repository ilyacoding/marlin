module Marlin
  module Actions
    class DeleteKey < Marlin::Action
      def call
        @persister.read(@key).tap do
          @persister.delete(@key)
        end
      end
    end
  end
end
