# create interface that displays main dishes, then prompts user to choose one
#then lists side dishes and prompts user to choose 2
#computer repeats users choices
#total's lunch items and outputs prices

class Menu
  def initialize(menu)
    @menu = menu
  end

  @@entree_choice 
  @@side_choices = []

  def print
    #display menu options for entrees
    puts @menu [:message]
    @menu[:options].each_with_index do |item, index|
      puts "#{index+1} #{item}"
    end
  end


  #gets user input for entree choice, then assigns @@entree_choice to their selection
  def entree_selection
    puts "Please select a value:"
    input = gets.strip
    selection = Integer(input)
    #return the selection value and go to choosing side items/go to rescue if input is invalid
    if (selection >= 1 && selection <= @menu[:options].size)
      @@entree_choice = @menu[:options][selection - 1]
      puts "Thanks, your choice is #{@@entree_choice} "
      return selection

    else
      puts "Only enter numbers from 1 to #{@menu[:options].size}"
      self.entree_selection
    end

    rescue ArgumentError
      puts "Please select an integer"
      self.entree_selection
  end


  def side_selection
  #ask for user input
  puts "Please select a value for your first side:"
  input = gets.strip
  selection = Integer(input)
  if (selection >= 1 && selection <= @menu[:options].size)
    @@side_choices.push(@menu[:options][selection - 1])
    puts "Your sides are:"
    @@side_choices.each do |x|
      puts x
    end
  end
  
  rescue ArgumentError
    puts "Please select an integer"
    self.side_selection
  end


end

