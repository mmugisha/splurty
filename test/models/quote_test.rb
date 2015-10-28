require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
  	quote = FactoryGirl.create(:quote)
  	quote_id = quote.id.to_s
  	expected_tag = "GV##{quote_id}"
  	assert_equal expected_tag, quote.unique_tag

  end
end
