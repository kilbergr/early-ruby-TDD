require 'spec_helper'
require_relative '../animal'

describe Animal do
	let(:animal){Animal.new("Coco", 8)}

	describe "animal to be sleeping by default" do
		it "should be sleeping by default" do
			expect(animal.sleeping).to be(true)
		end
	end

	describe "wake up method" do
		it "should set sleeping to false if wake_up is called" do
			animal.wake_up
			expect(animal.sleeping).to be(false)
		end 
	end

	describe "sleep method" do
		it "should set sleeping to true if sleeping is called" do
			animal.to_sleep
			expect(animal.sleeping).to be (true)
		end
	end

	describe "feed method" do
		it "should return NOM NOM NOM if animal fed while is awake" do
			animal.wake_up
			expect(animal.feed).to eq("NOM NOM NOM")
		end
	end

end

describe Dog do
	let(:dog){Dog.new("Nino", 10)}

	describe "woof method" do
		it "should return nil if dog is sleeping" do
			dog.sleeping
			expect(dog.woof).to eq(nil)
		end
			it "should return WOOF if dog is not sleeping" do
			dog.wake_up
			expect(dog.woof).to eq("WOOF")
		end	
	end

	describe "should show favorite treats" do
		it "should show favorite_treat array" do
			expect(dog.show_favorite_treats).to eq(["bones", "pistachio nuts", "milk", "cookies"])
		end
	end

	describe "adding a treat to favorite treats array" do
		it "should add treat to favorite_treat array" do
			dog.add_favorite_treat("lettuce")
			expect(dog.show_favorite_treats).to eq(["bones", "pistachio nuts", "milk", "cookies", "lettuce"])
		end
	end

	describe "toggling between sleep and awake in one method" do
		it "should wake if dog was asleep" do
			dog.to_sleep
			dog.change_sleep
			expect(dog.sleeping).to be(false)
		end
	end

		describe "toggling between sleep and awake in one method" do
		it "should sleep if dog was awake" do
			dog.wake_up
			dog.change_sleep
			expect(dog.sleeping).to be(true)
		end
	end

end

describe "making a cat" do
	let(:cat){Cat.new("Baobao", 4)}

	describe "meow asleep method" do
		it "should meow when meow_asleep method is called...think this is in error" do
			cat.sleeping
			expect(cat.meow_asleep).to eq("MEOW")
		end
	end

	describe "meow method" do
		it "should meow when meow_awake is called and cat is awake" do 
			cat.wake_up
			expect(cat.meow_awake).to eq("MEOW")
		end
	end


end
