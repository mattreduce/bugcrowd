require "bugcrowd/version"
require "bugcrowd/client"

module Bugcrowd

  class << self
    def client
      @client ||= Bugcrowd::Client.new
    end

    private

    def method_missing(method_name, *args, &block)
      if client.respond_to?(method_name)
        return client.send(method_name, *args, &block)
      end

      super
    end
  end

end
