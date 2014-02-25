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

		after do
			@rect.destroy!
		end

		it "Make sure created Rectangle rect is not nil" do
			@rect.wont_be_nil
		end

		it "Test p1 in Rectangle rect is Point (-1,-1)" do
			assert_equal @rect.p1, @p1
		end

		it "Test p2 in Rectangle rect is Point (3,3)" do
			assert_equal @rect.p2, @p2
		end

		it "Test rect.area should equal 16" do
			assert_equal @rect.area, 16
		end

	end

end