require_relative 'menu.rb'

entree_choices = {
  message: "Welcome to lunch, here are our entrees:",
  options: ["Pizza", "Burrito", "Hamburger"],
} 


side_choices = {
  message: "Here are our side choices:",
  options: ["Mac and cheese", "Rice", "Corn", "tater tots"],
}

entree_menu = Menu.new(entree_choices)
side_menu = Menu.new(side_choices)

entree_menu.print
entree_menu.entree_selection

side_menu.print
side_menu.side_selection
