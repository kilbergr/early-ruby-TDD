# TDD Animals
It's time to put your knowledge of Ruby and Rspec to the test and build an application strictly using TDD!

You want to write the least amount of code possible to make the tests pass.

## Your application should consist of three classes:

1. Animal

Each animal should have a/an:

property called name  
property called age  
property called sleeping, which should have a default value of true  
instance method called wake_up which changes sleeping to false  
instance method called sleep which changes sleeping to true  
instance method called feed which returns "NOM NOM NOM" if the animal is not sleeping  
2. Dog

should inherit from Animal  
has a class variable called favorite_treats which is an array of treats  
has an instance variable called favorite treat which is a random item in the favorite_treats array  
has an instance method called woof which returns "WOOF" if sleeping is not false  
has a class method which adds to the favorite_treats array  
has a class method which gets the favorite_treats array  
3. Cat

should inherit from Animal  
has an instance method called meow which returns "MEOW" if sleeping is not false  
##Getting Started

initialize an rspec application  
create the _spec.rb files necessary and include require "spec_helper" in each one  
start by writing tests! Remember, red -> green -> refactor  
see your tests fail and write the code necessary to make them pass   
What kind of tests should I write?

You have a tremendous amount of flexibility when writing these tests, but think carefully about what they should look like. Before you even start writing tests, think about what data you are going to need for your tests and how you are going to create sample data for your tests.

Next, take a look at the documentation for Rspec matchers. You should use truthiness matchers for booleans and object type matchers for instances of classes.

Bonus

Combine the wake_up and sleep instance methods into one method that toggles the sleeping state.
Create a class method called show_all_animals which returns a new array of hashes that contain the following information
the name of the animal
the age of the animal
the class of the animal (Animal, Dog or Cat)