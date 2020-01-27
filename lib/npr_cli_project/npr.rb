require 'pry'
#Author Richard Rosenthal Janaury 27 2020
# “They blew out a breath and did the thing all heroes must do—they took that terrifying first step.”
# ― Chloe Neill, Midnight Marked

class NprCliProject::CLI 
  
  #call method starts the CLI class 
  def call 
    
    # puts <<-'EOF'
    # _        _______  _______    _______  _______  _______ 
    # ( (    /|(  ____ )(  ____ )  (  ____ \(  ____ \(       )
    # |  \  ( || (    )|| (    )|  | (    \/| (    \/| () () |
    # |   \ | || (____)|| (____)|  | |      | (__    | || || |
    # | (\ \) ||  _____)|     __)  | | ____ |  __)   | |(_)| |
    # | | \   || (      | (\ (     | | \_  )| (      | |   | |
    # | )  \  || )      | ) \ \__  | (___) || (____/\| )   ( |
    # |/    )_)|/       |/   \__/  (_______)(_______/|/     \|
    
    
    
    
    # EOF
    
    
    puts "Welcome to All Gems Considered"
    puts "Your number one place for all NPR daily news"
    puts " "
    
    list_headlines
    selection 
    goodbye
  end 
  
  #list_headlines method will take the scraper object created from the NPR class and iterate over all of it's headline elements.
  
  def list_headlines
    
    
   @news = NprCliProject::NPR.make_stories
   #binding.pry  
 
  count = 1 
  @news.each do  |news_stories|
      puts "#{count}. " + news_stories.headline  
      count +=1 
    end 
    puts ""
  end 
  
  
  #selection method will print out the headlines 
  
  def selection 
    puts "Enter the number of the headline to read its summary"
    input = nil 
    while input != "exit"
    input = gets.strip.downcase
    new_stories = nil
     if input.to_i > 0 && input.to_i <= @news.length 
        news_stories = @news[input.to_i-1]
         puts "#{news_stories.summary}"
         puts ""
         puts "Type list to go back or exit to quit program"
         input2 = gets.strip.downcase
         if input2 == "list"
           selection
         elsif input2 == "exit"
            input = "exit"
        end 
      else puts "I do not understand, please try again."
      end 
    end 
  end 
  
  # goodbye method will exit the program after confirming with the user if they would really want to exit
  
  def goodbye 
    puts "Wait wait are you sure? (Yes/No)"
    input = gets.strip.downcase
      if input == "no"
        selection 
      end 
  end 
  
end 