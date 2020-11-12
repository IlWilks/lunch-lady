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
entree_menu.print
entree_menu.selection