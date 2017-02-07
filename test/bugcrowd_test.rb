require 'test_helper'

class BugcrowdTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Bugcrowd::VERSION
  end
end
