module Marlin
  module Actions
    class SaveKey < Marlin::Action
      def call(value)
        @persister.write(@key, value)
        @persister.read(@key)
      end
    end
  end
end
