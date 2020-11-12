require_relative 'menu.rb'

entree_choices = {
  message: "Welcome to lunch, here are our entrees:",
  options: ["Pizza", "Burrito", "Hamburger"],
} 


side_choices = {
  message: "Here are our side choices:",
  options: ["Mac and cheese", "Rice", "Corn", "tater tots"],
}

entree_picked = "0"
sides_picked = []

entree_menu = Menu.new(entree_choices)
side_menu = Menu.new(side_choices)
#total = Menu.new(entree_choices)

#selects an entree
# entree_menu.print
# entree_picked = entree_menu.entree_selection

#selects 2 sides
side_menu.print
sides_picked.push(side_menu.side_selection)
sides_picked.push(side_menu.side_selection)
sides_picked.each do |x|
  puts x
end





# puts "Your entree is "
# puts entree_picked

# side_menu.print
# side_menu.side_selection

# total.total_lunch
