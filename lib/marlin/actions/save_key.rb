module Marlin
  module Actions
    class SaveKey < Marlin::Action
      def call(value)
        @persister.write(@key, value)
        Marlin::Actions::ReplicateKey.new(@key).call(:save)
        @persister.read(@key)
      end
    end
  end
end
