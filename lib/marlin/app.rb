require "sinatra/base"

module Marlin
  class App < Sinatra::Base
    set :root, File.dirname(__FILE__)

    KEYS_ROUTE = "/keys/:key"

    get "/" do
      "Marlin Key-Value Storage (#{ENV['SLAVE_URL'] ? 'Master' : 'Slave' })"
    end

    get "/ping" do
      "OK"
    end

    if ENV['SLAVE_URL']
      put KEYS_ROUTE do
        Marlin::Actions::SaveKey.new(params[:key]).call(request.body.read)
      end

      delete KEYS_ROUTE do
        Marlin::Actions::DeleteKey.new(params[:key]).call
      end
    end

    get KEYS_ROUTE do
      Marlin::Actions::ReadKey.new(params[:key]).call
    end

    require File.join(root, "/config/initializers/autoloader.rb")
  end
end
