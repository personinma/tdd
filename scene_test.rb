# Author: Steven Hu
# Unit Test for Scene.rb

require 'minitest/autorun'
require_relative 'scene.rb'
require_relative 'rectangle.rb'
require_relative 'triangle.rb'
require_relative 'circle.rb'

class SceneTest

	describe Scene, "Scene Class Unit Test" do 

		before do
			p1 = Point.new(-1,-1)
			p2 = Point.new(3,3)
			p3 = Point.new(1,1)
			@rect = Rectangle.new(p1,p2)
			@tri = Triangle.new(p1,p2)
			@cir = Circle.new(p3,1)
			@sce = Scene.new
		end

		it "Check if Scene sce.stack is nil initially"
			@sce.stack.must_be_nil
		end

		it "Add rect to Scene sce" do
			@sce.add_shape(@rect)
			@sce.stack[0].must_be_instance_of Rectangle
		end

		it "Add tri to Scene sce" do
			@sce.add_shape(@tri)
			@sce.stack[1].must_be_instance_of Triangle
		end

		it "Add cir to Scene sce" do
			@sce.add_shape(@cir)
			@sce.stack[2].must_be_instance_of Circle
		end

		it "Number of shapes in scene is 3" do
			assert_equal @sce.shape_count, 3
		end

		it "Total area of shapes in scene should be 24 + pi" do
			assert_equal @sce.total_area, (24 + Math::PI)
		end

		it "Remove the last shape added from Scene sce, equals to @cir" do
			assert_equal @sce.remove_shape, @cir
		end

	end

end