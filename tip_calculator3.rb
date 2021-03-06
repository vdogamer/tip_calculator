puts "What is the price of your meal? "
meal = Float(gets.chomp)

puts "What is the local tax rate? "
tax = Float(gets.chomp)

puts "What percentage of the meal would you like to add for a tip?"
tip = Float(gets.chomp)

def newValue(base, percent)
  newAmount = base * percent / 100.00
  return newAmount
end

#the dollar value of the tax
tax_value = newValue(meal, tax) #meal * tax / 100.00

# the subtotal for the meal before the tip
meal_with_tax = meal + tax_value

# The tip rate for the meal
tip_value =  newValue(meal_with_tax, tip) #meal_with_tax * tip / 100.00

# the dollar value of meal_with_tax plus tip_value
total_cost = meal_with_tax + tip_value

print "The pre-tax cost of your meal was $#{sprintf('%.2f', meal_with_tax)}\n"
print "At #{sprintf('%.2f', tax)}%, your tax is $#{sprintf('%.2f', tax_value)}\n"
print "For a #{sprintf('%.2f', tip)}% tip, you should leave $#{sprintf('%.2f', tip_value)}\n"
print "The total for your meal is $#{sprintf('%.2f', total_cost)}"