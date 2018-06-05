require 'test/unit'

class SetupTest < Test::Unit::TestCase
  def test_ruby
    assert(RUBY_VERSION > '2.3.0')
  end

  def test_true
    assert_true(true)
  end
end
