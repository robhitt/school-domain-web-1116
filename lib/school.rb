class School

	attr_reader :school_name
	attr_accessor :roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(name, grade)
		@roster[grade] ||= []
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, array_students|
			@roster[grade].sort!
		end
	end

end 
