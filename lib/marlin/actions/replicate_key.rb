module Marlin
  module Actions
    class ReplicateKey < Marlin::Action
      def call(action)
        value = @persister.read(@key)

        return unless ENV['slave_url']

        RestClient.put(key_route, value) if action == :save
        RestClient.delete(key_route) if action == :delete
      end

      private

      def key_route
        [ENV['slave_url'], "/keys/", @key].join
      end
    end
  end
end
