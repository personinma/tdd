# Author: Steven Hu
# Unit Test for triangle.rb

require 'minitest/autorun'
require_relative 'triangle.rb'

class TraingleTest

	describe Triangle, "Triangle Class Unit Test" do 

		before do
			@p1 = Point.new(0,0)
			@p2 = Point.new(5,4)
			@p3 = Point.new(8,2)
			@tri = Triangle.new(@p1,@p2,@p3) 
		end

		it "Make sure created Triangle tri is not nil" do
			@tri.wont_be_nil
		end

		it "Test p1 in Triangle tri is Point (0,0)" do
			assert_equal @p1, @tri.p1
		end

		it "Test p2 in Triangle tri is Point (5,4)" do
			assert_equal @p2, @tri.p2
		end

		it "Test p2 in Triangle tri is Point (8,2)" do
			assert_equal @p3, @tri.p3
		end		

		it "Test rect.area should equal 11" do
			assert_equal 11, @tri.area
		end

	end

end