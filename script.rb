require 'date'
require './stack.rb'

=begin
TODO: find a way to add an input which will append any newly input data to this file (potentially move to a new file too)
TODO: bundle input into a function that runs every time the program starts ("select mode: add, view, etc.")
=end

growth = Stack.new
reese = Stack.new
puff = Stack.new

today = DateTime.now.strftime("%m/%d/%Y")

information = "\n\nThe data is provided numerically for comparison.\nLength is in inches.\nWeight is in grams.\nAge is my closest approximation based on the initial data.\n\n\n"

reese_initial_data = {
    date: "09/07/23",
    length: 7.5,
    weight: 510,
    age: 12
}
puff_initial_data = {
    date: "09/07/23",
    length: 8,
    weight: 623,
    age: 22
}

reese.push(reese_initial_data)
puff.push(puff_initial_data)

r_measurement_two = {
    date: "09/14/23",
    length: 7.75,
    weight: 550,
    age: 13
}
p_measurement_two = {
    date: "09/14/23",
    length: 8.63,
    weight: 709,
    age: 23
}

reese.push(r_measurement_two)
puff.push(p_measurement_two)

# print information
growth.push({today: today, reese: reese, puff: puff})
# usage growth.peek[:pet].peek[:attribute]
puts growth.peek[:reese].peek
