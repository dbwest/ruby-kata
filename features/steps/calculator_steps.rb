Given /^I have entered (\d+)$/ do |num|
  @calculator ||= Calculator.new
  @calculator.enter_number num
end

Given /^I have selected plus$/ do
  @calculator.plus
end

Given /^I have selected minus$/ do
  @calculator.minus
end

When /^I select equals$/ do
  @calculator.equals
end

Then /^the display shows (\d+)$/ do |num|
  @calculator.display.should == num
end

Transform /^\d+$/ do |s|
  s.to_i
end
