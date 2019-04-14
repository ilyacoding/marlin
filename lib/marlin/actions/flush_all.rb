module Marlin
  module Actions
    class FlushAll < Marlin::Action
      def call
        @persister.flushall
        Marlin::Actions::ReplicateKey.new(@key).call(:flushall)
      end
    end
  end
end
