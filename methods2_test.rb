require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true, @m.elevenish?(11)
		assert_equal true, @m.elevenish?(22)
		assert_equal true, @m.elevenish?(12)
		assert_equal false, @m.elevenish?(24)
		assert_equal false, @m.elevenish?(10)
		assert_equal false, @m.elevenish?(13)
		assert_equal false, @m.elevenish?(9)
	end

	def test_ice_cream_party
		assert_equal 1, @m.ice_cream_party?(5, 5)
		assert_equal 2, @m.ice_cream_party?(5, 10)
		assert_equal 2, @m.ice_cream_party?(5, 11)
		assert_equal 1, @m.ice_cream_party?(5, 9)
		assert_equal 0, @m.ice_cream_party?(4, 5)
		assert_equal 0, @m.ice_cream_party?(5, 4)
	end

	def test_squirrel_party
		assert_equal true, @m.squirrel_party?(40, true)
		assert_equal true, @m.squirrel_party?(41, true)
		assert_equal true, @m.squirrel_party?(59, true)
		assert_equal true, @m.squirrel_party?(60, true)
		assert_equal false, @m.squirrel_party?(39, true)
		assert_equal true, @m.squirrel_party?(61, false)
		assert_equal false, @m.squirrel_party?(61, true)
	end

	def test_in_order
		assert_equal true, @m.in_order?(1, 2, 3, false)
		assert_equal true, @m.in_order?(3, 2, 4, true)
		assert_equal false, @m.in_order?(3, 2, 4, false)
		assert_equal false, @m.in_order?(1, 2, 1, false)
	end

end
