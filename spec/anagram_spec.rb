require 'anagram.rb'
describe Anagram do
  let(:string1){"pistol"}
  let(:list1){["pistol","pilots","spoilt","postil","paper","zen","pilot"]}

  it "# creates an anagram class" do
    expect{Anagram.new(string1, list1)}.to_not raise_error
  end

  it "# raises an error when not given enough data" do
    expect{Anagram.new}.to raise_error(ArgumentError)
  end

  it "* raises an error when given an empty list" do
    expect{Anagram.new(string1, [])}.to raise_error("Empty list")
  end

  it "* finds the anagrams of a given list" do
    expect(Anagram.new(string1, list1).run).to eq(["pistol","pilots","spoilt","postil"])
  end
end
