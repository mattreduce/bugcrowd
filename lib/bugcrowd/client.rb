require 'bugcrowd/client/bounties'
require 'excon'

module Bugcrowd
  class Client
    include Bugcrowd::Client::Bounties

    API_ENDPOINT = "https://api.bugcrowd.com".freeze
    USER_AGENT = "Bugcrowd Ruby Gem #{Bugcrowd::VERSION}".freeze
    MEDIA_TYPE = "application/vnd.bugcrowd+json"

    attr_accessor :username, :password

    def initialize(username: ENV['BUGCROWD_USER'], password: ENV['BUGCROWD_PASSWORD'])
      self.username = username
      self.password = password
    end

    def inspect
      inspected = super

      inspected = inspected.gsub! self.username, "*******" if self.username
      inspected = inspected.gsub! self.password, "*******" if self.password

      inspected
    end

    def get(path, options = {})
      options.merge!(path: path)
      connection.get(options)
    end

    def connection_options
      {
        headers: {
          "Accept" => MEDIA_TYPE,
          "User-Agent" => USER_AGENT
        },
        user: self.username,
        password: self.password
      }
    end

    def connection
      @connection = Excon.new(API_ENDPOINT, connection_options)
    end
  end
end
