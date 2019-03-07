module Marlin
  module Persisters
    class Base
      protected

      def read(key)
        raise NotImplementedError
      end

      def write(key, value)
        raise NotImplementedError
      end
    end
  end
end
