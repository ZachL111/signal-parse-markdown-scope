require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = SignalParseMarkdownScope::Signal.new(demand: 71, capacity: 86, latency: 14, risk: 22, weight: 7)
    assert_equal 154, SignalParseMarkdownScope.score(signal_case_1)
    assert_equal 'review', SignalParseMarkdownScope.classify(signal_case_1)
    signal_case_2 = SignalParseMarkdownScope::Signal.new(demand: 89, capacity: 84, latency: 25, risk: 13, weight: 11)
    assert_equal 226, SignalParseMarkdownScope.score(signal_case_2)
    assert_equal 'accept', SignalParseMarkdownScope.classify(signal_case_2)
    signal_case_3 = SignalParseMarkdownScope::Signal.new(demand: 97, capacity: 94, latency: 14, risk: 20, weight: 7)
    assert_equal 222, SignalParseMarkdownScope.score(signal_case_3)
    assert_equal 'accept', SignalParseMarkdownScope.classify(signal_case_3)
  end
end
