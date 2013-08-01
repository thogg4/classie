require 'test_helper'

class CatTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Cat.new.valid?
  end
end
