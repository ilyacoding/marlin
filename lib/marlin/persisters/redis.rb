module Marlin
  module Persisters
    class Redis < Base
      def read(key)
        raise NotImplementedError
      end

      def write(key, value)
        raise NotImplementedError
      end

      def delete(key)
        raise NotImplementedError
      end
    end
  end
end
