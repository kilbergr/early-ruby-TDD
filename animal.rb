class Animal
	attr_accessor :name, :age, :sleeping

	def initialize(name,age)
		@name = name
		@age = age
		@sleeping = true
		@@all_animals = []
	end

	def wake_up
		@sleeping = false
	end

	def to_sleep
		@sleeping = true
	end

	def change_sleep
		@sleeping = !@sleeping
	end

	def feed
		"NOM NOM NOM"	unless self.sleeping 
	end

	def show_all_animals

		@@all_animals << self
		
	end

end

class Dog < Animal
	@@favorite_treats = ["bones", "pistachio nuts", "milk", "cookies"]
	@@todays_favorite = @@favorite_treats[rand(@@favorite_treats.length)-1]
	def initialize(name, age)
		super
	end

	def woof
		"WOOF" unless self.sleeping
	end

	def self.show_favorite_treats
		@@favorite_treats
	end

	def self.add_favorite_treat(treat)
		@@favorite_treats << treat
	end
end

class Cat < Animal
	def initialize(name,age)
		super
	end

# Asked for an instance method called meow which returns "MEOW" if sleeping is not false
	def meow_asleep
		"MEOW" unless !@sleeping
	end

# I think you meant for one if sleeping IS false
	def meow_awake
		"MEOW" unless self.sleeping
	end

end













