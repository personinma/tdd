# Author: Steven Hu
# Class Circle: takes a point on a plane and a radius to form a circle with them

require_relative 'point.rb'

class Circle

	attr_accessor :p
	attr_reader :radius

	def initialize(p, radius)
		@p = p
		@radius = radius.abs
	end

	def area
		return Math::PI * (@radius**2)
	end

end