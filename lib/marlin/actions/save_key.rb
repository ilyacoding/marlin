module Marlin
  module Actions
    class SaveKey < Marlin::Action
      def call(value)
        @persister.write(@key, value)
      end
    end
  end
end
