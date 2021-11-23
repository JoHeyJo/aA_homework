require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do 
      expect(Dessert.type).to eq("chef")
    end

    it "sets a quantity" do 
      expect(Dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do 
      expect(Dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('chef', num, 'chef')}.to raise_error(ArgumentError)
  end
end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("cookie")
      expect(Dessert.ingredients).to include("cookies")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      brownie.eat(20)
      expect(brown.amount).to eq(80)
    end

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
