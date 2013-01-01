require 'calculator'

describe Calculator do

  it "displays 0 when initialized" do
    subject.display.should == 0
  end

  it "displays entered numbers" do
    subject.enter_number 2
    subject.display.should == 2
  end
	
	it "adds two numbers" do
    subject.enter_number 2
    subject.plus
    subject.enter_number 2
    subject.equals
    subject.display.should == 4
	end

	it "adds multiple numbers" do
    subject.enter_number 2
    subject.plus
    subject.enter_number 2
    subject.plus
    subject.enter_number 2
    subject.equals
    subject.display.should == 6
	end

	it "subtracts two numbers" do
    subject.enter_number 8
    subject.minus
    subject.enter_number 2
    subject.equals
    subject.display.should == 6
	end

	it "subtracts multiple numbers" do
    subject.enter_number 8
    subject.minus
    subject.enter_number 2
    subject.minus
    subject.enter_number 2
    subject.equals
    subject.display.should == 4
	end

	it "adds and subtracts multiple numbers" do
    subject.enter_number 8
    subject.minus
    subject.enter_number 4
    subject.plus
    subject.enter_number 2
    subject.equals
    subject.display.should == 6
	end

	it "displays results of computation when operators are selected" do
    subject.enter_number 4
    subject.plus
    subject.enter_number 4
    subject.minus
    subject.display.should == 8
    subject.enter_number 4
    subject.plus
    subject.display.should == 4
	end

end
