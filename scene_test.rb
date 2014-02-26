# Author: Steven Hu
# Unit Test for Scene.rb

require 'minitest/autorun'
require_relative 'scene.rb'
require_relative 'rectangle.rb'
require_relative 'triangle.rb'
require_relative 'circle.rb'

class SceneTest < MiniTest::Unit::TestCase

	describe Scene, "Scene Class Unit Test" do 

		before do
			@rect = Rectangle.new(Point.new(-1,-1),Point.new(3,3))
			@tri = Triangle.new(Point.new(0,0),Point.new(5,4),Point.new(8,2))
			@cir = Circle.new(Point.new(1,1),1)
			@sce = Scene.new
			@sce.add_shape(@rect)
			@sce.add_shape(@tri)
			@sce.add_shape(@cir)
		end

		it "Add rect to Scene sce" do
			@sce.stack[0].must_be_instance_of Rectangle
		end

		it "Add tri to Scene sce" do
			@sce.stack[1].must_be_instance_of Triangle
		end

		it "Add cir to Scene sce" do
			@sce.stack[2].must_be_instance_of Circle
		end

		it "Number of shapes in scene is 3" do
			assert_equal 3, @sce.shape_count
		end

		it "Total area of shapes in scene should be 27 + pi" do
			assert_equal (27 + Math::PI), @sce.total_area
		end

		it "Remove the last shape added from Scene sce, equals to @cir" do
			assert_equal @cir, @sce.remove_shape
		end

	end

end