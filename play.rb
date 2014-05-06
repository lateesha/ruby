class Project
	attr_reader :name
	attr_accessor :location, :start_date, :end_date, :funded

	def initialize(name)
		@name = name
	end

	def to_s 
		"#{name} is located at #{location}"
	end
end

#----------- 
projects = []

answer = "y"

while answer == "y"

	puts "What's the name of your project?"
	name = gets.chomp

	project = Project.new(name)

	puts "Where is this project located?" 
	project.location = gets.chomp

	projects << project

	puts "Would you like to add another project?"

	answer = gets.chomp

end

puts projects