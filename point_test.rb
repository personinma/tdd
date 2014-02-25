# Author: Steven Hu
# Unit Test for point.rb

require 'minitest/autorun'
require_relative 'point.rb'

class PointTest

	describe Point, "Point Class Unit Test" do 

		before do
			@p = Point.new(1,1)
		end

		it "Make sure created Point p of (1,1) is not nil" do
			@p.wont_be_nil
		end

		it "Test x in Point p" do
			assert_equal 1, @p.x
		end

		it "Test y in Point p" do
			assert_equal 1, @p.y
		end

	end

end