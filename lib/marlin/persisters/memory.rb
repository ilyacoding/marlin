module Marlin
  module Persisters
    class Memory < Base
      @@storage = {}

      def read(key)
        @@storage[key]
      end

      def write(key, value)
        @@storage[key] = value
      end

      def delete(key)
        @@storage.delete(key)
      end
    end
  end
end
