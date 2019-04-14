module Marlin
  class Persister
    protected

    def read(key)
      raise NotImplementedError
    end

    def write(key, value)
      raise NotImplementedError
    end

    def flushall
      raise NotImplementedError
    end
  end
end
