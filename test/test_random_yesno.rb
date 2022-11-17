# frozen_string_literal: true

require 'minitest/autorun'
require 'random_yesno'

class TestRandomYesNo < Minitest::Test
  def test_show
    refute_empty response
    assert response.keys.include?('answer')
    assert response.keys.include?('image')
  end

  def response
    @response ||= RandomYesNo.show
  end
end
