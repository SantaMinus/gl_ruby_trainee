require "calculator"

describe Calculator do
  before do
    @calc = Calculator.new
  end

  it "should add numbers" do
    expect(@calc.add(1, 2)).to eq(3)
  end

  it "should subtract numbers" do
  	expect(@calc.subtract(3, 1)).to eq(2)
  end

  it "should multiply numbers" do
  	expect(@calc.multiply(3, -4)).to eq(-12)
  end

  it "should divide numbers" do
  	expect(@calc.divide(1,4)).to eq(0.25)
  end
end