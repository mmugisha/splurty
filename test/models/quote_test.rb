require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
  	quote = Quote.create(:author => 'Ken Mazaika', :saying => 'You only yolo once.')
  	quote_id = quote.id.to_s
  	expected_tag = "KM##{quote_id}"
  	assert_equal expected_tag, quote.unique_tag

  end
end
