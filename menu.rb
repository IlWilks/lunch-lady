# create interface that displays main dishes, then prompts user to choose one
#then lists side dishes and prompts user to choose 2
#computer repeats users choices
#total's lunch items and outputs prices

class Menu
  def initialize(menu)
    @menu = menu
  end

  def print
    #display menu options for entrees
    puts @menu [:message]
    @menu[:options].each_with_index do |item, index|
      puts "#{index+1} #{item}"
    end
  end

  def selection
    #ask for user input 
    puts "Please select a value:"
    input = gets.strip
    selection = Integer(input)
    puts selection
    


  
  rescue ArgumentError
    puts "Please select an integer"
  end
end

