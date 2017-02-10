module Bugcrowd
  class Client
    module Bounties
      def list_bounties
        response = Client.new.get('/bounties')
      end
      def get_bounty(bounty_uuid)
        response = Client.new.get("/bounties/#{bounty_uuid}")
      end
    end
  end
end
