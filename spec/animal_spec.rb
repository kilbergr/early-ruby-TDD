require 'spec_helper'
require_relative '../animal'

describe Animal do
	let(:animal){Animal.new("Coco", 8)}

	describe "animal to be sleeping by default" do
		it "should be sleeping by default" do
			expect(animal.sleeping).to eq(true)
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
			expect(animal.sleeping).to eq(true)
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

end
