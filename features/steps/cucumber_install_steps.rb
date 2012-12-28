Given /^some condition$/ do
	puts "I executed the given"
end

When /^I execute the gherkin$/ do
	puts "I executed the when"
end

Then /^the test should execute$/ do
	puts "I executed the then"
    true.should be(true)
end
