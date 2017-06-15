require 'stock_picker.rb'
describe StockPicker do
  let(:simple_case){StockPicker.new([1,2])}
  let(:regular_case){StockPicker.new([6,1231,9,25,2,3,1,2,3,9,123,34,232,23,12,0,123,21,2,3])}
  let(:all_same_case){StockPicker.new([4,4,4,4,4,4])}

  it "* creates a StockPicker" do
    expect{simple_case}.to_not raise_error
  end
  it "* raises error when no passing data " do
    expect{StockPicker.new}.to raise_error(ArgumentError)
  end
  it "* gets an answer on a simple case" do
    expect(simple_case.pick).to eq([0,1])
  end
  it "* gets an answer on a simple case" do
    expect(simple_case.pick).to eq([0,1])
  end
  it "* gets a good answer" do
    expect(regular_case.pick).to eq([1,15])
  end
  it "*sames values don't break " do
    expect(all_same_case.pick).to eq([0,1])
  end
  it "raises an error when not given enough data" do
    expect{StockPicker.new([1])}.to raise_error("I need at least 2 values")
  end

end
