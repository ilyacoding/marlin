module Marlin
  class Action
    def initialize(key, persister = Marlin::Persisters::RedisStorage.new)
      @key = key
      @persister = persister
    end

    protected

    def call
      raise NotImplementedError
    end
  end
end
