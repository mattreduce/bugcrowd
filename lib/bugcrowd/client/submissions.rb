module Bugcrowd
  class Client
    module Submissions
      def list_submissions(bounty_uuid, options={})
        response = Client.new.get("/bounties/#{bounty_uuid}/submissions", query: options)
      end

      def get_submission(submission_uuid, options={})
        response = Client.new.get("/submissions/#{submission_uuid}", query: options)
      end
    end
  end
end
