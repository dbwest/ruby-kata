Given /^I am running a tagged scenario$/ do
    puts "I'm running a tagged scenario given step"
end

When /^I execute the scenario$/ do
    puts "I'm executing a tagged scenario when step"
end

Then /^I should only run the tagged scenario$/ do
    puts "I'm executing a tagged scenario then step"
end
