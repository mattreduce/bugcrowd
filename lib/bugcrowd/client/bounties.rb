module Bugcrowd
  class Client
    module Bounties
      def list_bounties
        response = Client.new.get('/bounties')
      end
    end
  end
end
