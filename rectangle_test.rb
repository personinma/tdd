# Author: Steven Hu
# Unit Test for rectangle.rb

require 'minitest/autorun'
require_relative 'rectangle.rb'

class RectangleTest

	describe Rectangle, "Rectangle Class Unit Test" do 

		before do
			@p1 = Point.new(-1,-1)
			@p2 = Point.new(3,3)
			@rect = Rectangle.new(@p1,@p2) 
		end

		it "Make sure created Rectangle rect is not nil" do
			@rect.wont_be_nil
		end

		it "Test p1 in Rectangle rect is Point (-1,-1)" do
			assert_equal @p1, @rect.p1
		end

		it "Test p2 in Rectangle rect is Point (3,3)" do
			assert_equal @p2, @rect.p2
		end

		it "Test rect.area should equal 16" do
			assert_equal 16, @rect.area
		end

	end

end