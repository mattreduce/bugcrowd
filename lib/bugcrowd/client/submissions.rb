module Bugcrowd
  class Client
    module Submissions
      def list_submissions(bounty_uuid, options={})
        response = Client.new.get("/bounties/#{bounty_uuid}/submissions", query: options)
      end
    end
  end
end
