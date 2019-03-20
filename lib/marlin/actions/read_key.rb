module Marlin
  module Actions
    class ReadKey < Marlin::Action
      def call
        @persister.read(@key)
      end
    end
  end
end
