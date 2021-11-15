require 'money'

# 10.00 USD

money = Money.new(1000, 'USD')
money_euro = Money.new(345, 'EUR')

puts money.inspect
puts money_euro.inspect