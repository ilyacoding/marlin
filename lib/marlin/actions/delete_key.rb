module Marlin
  module Actions
    class DeleteKey < Marlin::Action
      def call
        @persister.read(@key).tap do
          @persister.delete(@key)
          Marlin::Actions::ReplicateKey.new(@key).call(:delete)
        end
      end
    end
  end
end
