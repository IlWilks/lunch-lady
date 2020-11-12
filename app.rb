require_relative 'menu.rb'

entree_choices = {
  message: "Welcome to lunch, here are our entrees:",
  options: ["Pizza", "Burrito", "Hamburger"],
  prices:  [ 3.00 ,   4.00 ,     5.00      ]
} 


side_choices = {
  message: "Here are our side choices:",
  options: ["Mac and cheese", "Rice", "Corn", "tater tots"],
  prices:  [ 3.00 ,            2.00 ,  3.50 ,  4.00       ]
}

entree_picked = []
sides_picked = []
price_total = 0


entree_menu = Menu.new(entree_choices)
side_menu = Menu.new(side_choices)

entree_menu.print
entree_picked = entree_menu.entree_selection
price_total += entree_picked[1]

# #selects 2 sides
side_menu.print
# #currently manually running side_selection twice, can add logic to prompt user
sides_picked.push(side_menu.side_selection)
price_total += sides_picked[0][1]
side_menu.print
sides_picked.push(side_menu.side_selection)
price_total += sides_picked[0][1]
puts "Your order is an entree of #{entree_picked[0]} with sides "
sides_picked.each do |x, y|
  puts x
end
puts "Your lunch total is: $#{price_total}"


# puts price_total





# puts "Your entree is "
# puts entree_picked

# side_menu.print
# side_menu.side_selection

# total.total_lunch
