module Marlin
  module Actions
    class Base
      def initialize(key, persister = Marlin::Persisters::Redis.new)
        @key = key
        @persister = persister
      end

      protected

      def call
        raise NotImplementedError
      end
    end
  end
end
