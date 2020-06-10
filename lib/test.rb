require_relative 'waiter.rb'
require_relative 'customer.rb'
require_relative 'meal.rb'

howard = Customer.new("Howard", 30)
daniel = Customer.new("Daniel", 30)
joe = Customer.new("joe", 30)
andrew = Waiter.new("Andrew", 3)

howard.new_meal(andrew, 15, 1)
howard.new_meal(andrew, 15, 4)
howard.new_meal(andrew, 15, 5)
daniel.new_meal(andrew, 20, 1)
daniel.new_meal(andrew, 15, 3)
howard.new_meal(andrew, 15, 4)

joe.new_meal(andrew,1111,0)
joe.new_meal(andrew,1,3)
joe.new_meal(andrew,1,3)
joe.new_meal(andrew,1,3)
joe.new_meal(andrew,1,3)

puts andrew.worst_tip_meal.total