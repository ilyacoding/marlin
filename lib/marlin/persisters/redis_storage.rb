require "redis"
require "connection_pool"
REDIS = ConnectionPool.new(size: 15) { Redis.new }

module Marlin
  module Persisters
    class RedisStorage < Marlin::Persister
      def read(key)
        REDIS.with do |redis|
          redis.get(key.to_s)
        end
      end

      def write(key, value)
        REDIS.with do |redis|
          redis.set(key.to_s, value)
        end
      end

      def delete(key)
        REDIS.with do |redis|
          redis.del(key.to_s)
        end
      end
    end
  end
end
