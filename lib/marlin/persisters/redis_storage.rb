require "redis"

module Marlin
  module Persisters
    class RedisStorage < Marlin::Persister
      def read(key)
        redis.get(key.to_s)
      end

      def write(key, value)
        redis.set(key.to_s, value)
      end

      def delete(key)
        redis.del(key.to_s)
      end

      private

      def redis
        @redis ||= Redis.new(url: ENV["REDIS_URL"])
      end
    end
  end
end
