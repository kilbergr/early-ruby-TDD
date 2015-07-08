class Animal
	attr_accessor :name, :age, :sleeping

	def initialize(name,age)
		@name = name
		@age = age
		@sleeping = true
	end

	def wake_up
		@sleeping = false
	end

	def to_sleep
		@sleeping = true
	end

	def feed
		"NOM NOM NOM"	unless self.sleeping 
	end

end

class Dog < Animal
	def initialize(name, age)
		super
	end

	def woof
		"WOOF" unless self.sleeping
	end


end














