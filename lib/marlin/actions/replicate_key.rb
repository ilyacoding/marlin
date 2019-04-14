require 'rest-client'

module Marlin
  module Actions
    class ReplicateKey < Marlin::Action
      def call(action)
        value = @persister.read(@key)

        return unless ENV['SLAVE_URL']

        RestClient.put(key_route, value) if action == :save
        RestClient.delete(key_route) if action == :delete
        RestClient.get(flush_route) if action == :flushall
      end

      private

      def key_route
        [ENV['SLAVE_URL'], "/keys/", @key].join
      end

      def flush_route
        [ENV['SLAVE_URL'], "/flushall"].join
      end
    end
  end
end
