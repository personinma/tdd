# Author: Steven Hu
# Unit Test for circle.rb

require 'minitest/autorun'
require_relative 'circle.rb'

class CircleTest

	describe Circle, "Circle Class Unit Test" do 

		before do
			@p1 = Point.new(1,1)
			@rad = 1
			@cir = Circle.new(@p1,@radius) 
		end

		after do
			@cir.destroy!
		end

		it "Make sure created Circle cir is not nil" do
			@cir.wont_be_nil
		end

		it "Test p1 in Circle cir is Point (1,1)" do
			assert_equal @cir.p1, @p1
		end

		it "Test radius in Circle cir is 1" do
			assert_equal @cir.radius, @rad
		end

		it "Test cir.area should equal pi" do
			assert_equal @cir.area, Math::PI
		end

	end

end