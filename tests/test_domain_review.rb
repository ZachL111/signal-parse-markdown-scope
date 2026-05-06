require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = SignalParseMarkdownScope::DomainReview.new(signal: 66, slack: 47, drag: 14, confidence: 63)
    assert_equal 200, SignalParseMarkdownScope.domain_review_score(item)
    assert_equal "ship", SignalParseMarkdownScope.domain_review_lane(item)
  end
end
