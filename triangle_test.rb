# Author: Steven Hu
# Unit Test for triangle.rb

require 'minitest/autorun'
require_relative 'triangle.rb'

class TraingleTest

	describe Triangle, "Triangle Class Unit Test" do 

		before do
			@p1 = Point.new(-1,-1)
			@p2 = Point.new(3,3)
			@tri = Triangle.new(@p1,@p2) 
		end

		it "Make sure created Triangle tri is not nil" do
			@tri.wont_be_nil
		end

		it "Test p1 in Triangle tri is Point (-1,-1)" do
			assert_equal @tri.p1, @p1
		end

		it "Test p2 in Triangle tri is Point (3,3)" do
			assert_equal @tri.p2, @p2
		end

		it "Test rect.area should equal 8" do
			assert_equal @tri.area, 8
		end

	end

end